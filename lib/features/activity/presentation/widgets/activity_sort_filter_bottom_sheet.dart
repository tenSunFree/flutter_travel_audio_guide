import 'package:flutter/material.dart';
import '../enums/activity_sort_filter_enums.dart';

/// Return type: (Sort, Status filter, Cost filter, Administrative region)
/// An empty string for administrative regions represents "all"
typedef ActivityFilterResult = (
  ActivitySortOrder sortOrder,
  ActivityStatusFilter statusFilter,
  ActivityFeeFilter feeFilter,
  String distric,
);

class ActivitySortFilterBottomSheet extends StatefulWidget {
  const ActivitySortFilterBottomSheet({
    super.key,
    required this.initialSortOrder,
    required this.initialStatusFilter,
    required this.initialFeeFilter,
    required this.initialDistric,
    required this.availableDistrics,
  });

  final ActivitySortOrder initialSortOrder;
  final ActivityStatusFilter initialStatusFilter;
  final ActivityFeeFilter initialFeeFilter;
  final String initialDistric;

  /// Extracts a list of administrative districts from the loaded data; an empty list will not display administrative district blocks.
  final List<String> availableDistrics;

  @override
  State<ActivitySortFilterBottomSheet> createState() =>
      _ActivitySortFilterBottomSheetState();
}

class _ActivitySortFilterBottomSheetState
    extends State<ActivitySortFilterBottomSheet> {
  late ActivitySortOrder _sortOrder;
  late ActivityStatusFilter _statusFilter;
  late ActivityFeeFilter _feeFilter;
  late String _distric;

  @override
  void initState() {
    super.initState();
    _sortOrder = widget.initialSortOrder;
    _statusFilter = widget.initialStatusFilter;
    _feeFilter = widget.initialFeeFilter;
    _distric = widget.initialDistric;
  }

  void _reset() {
    setState(() {
      _sortOrder = ActivitySortOrder.beginAsc;
      _statusFilter = ActivityStatusFilter.all;
      _feeFilter = ActivityFeeFilter.all;
      _distric = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Drag handle
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: colorScheme.outlineVariant,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          // Title
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '排序與篩選',
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const Divider(height: 1),
          // Scrollable content
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sort
                  _SectionLabel(
                    label: '排序',
                    colorScheme: colorScheme,
                    textTheme: textTheme,
                  ),
                  RadioGroup<ActivitySortOrder>(
                    groupValue: _sortOrder,
                    onChanged: (v) => setState(() => _sortOrder = v!),
                    child: Column(
                      children: ActivitySortOrder.values
                          .map(
                            (sort) => RadioListTile<ActivitySortOrder>(
                              title: Text(sort.label),
                              value: sort,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              dense: true,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const Divider(height: 24, indent: 16, endIndent: 16),
                  // Status Filtering
                  _SectionLabel(
                    label: '狀態',
                    colorScheme: colorScheme,
                    textTheme: textTheme,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: ActivityStatusFilter.values
                          .map(
                            (f) => ChoiceChip(
                              label: Text(f.label),
                              selected: _statusFilter == f,
                              onSelected: (_) =>
                                  setState(() => _statusFilter = f),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const Divider(height: 24, indent: 16, endIndent: 16),
                  // Advanced Filtering
                  _SectionLabel(
                    label: '進階篩選',
                    colorScheme: colorScheme,
                    textTheme: textTheme,
                  ),
                  // cost
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
                    child: Text(
                      '費用',
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: ActivityFeeFilter.values
                          .map(
                            (f) => ChoiceChip(
                              label: Text(f.label),
                              selected: _feeFilter == f,
                              onSelected: (_) => setState(() => _feeFilter = f),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  // Administrative region (only displayed if available)
                  if (widget.availableDistrics.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                      child: Text(
                        '行政區',
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        children: [
                          ChoiceChip(
                            label: const Text('全部'),
                            selected: _distric.isEmpty,
                            onSelected: (_) => setState(() => _distric = ''),
                          ),
                          ...widget.availableDistrics.map(
                            (d) => ChoiceChip(
                              label: Text(d),
                              selected: _distric == d,
                              onSelected: (_) => setState(() => _distric = d),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ] else
                    const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          // Operation Buttons
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: _reset,
                    child: const Text('重設'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: FilledButton(
                    onPressed: () => Navigator.of(
                      context,
                    ).pop((_sortOrder, _statusFilter, _feeFilter, _distric)),
                    child: const Text('套用'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Section Title
class _SectionLabel extends StatelessWidget {
  const _SectionLabel({
    required this.label,
    required this.colorScheme,
    required this.textTheme,
  });

  final String label;
  final ColorScheme colorScheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Text(
        label,
        style: textTheme.labelLarge?.copyWith(
          color: colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
