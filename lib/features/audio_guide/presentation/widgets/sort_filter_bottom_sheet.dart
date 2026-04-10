import 'package:flutter/material.dart';
import '../enums/sort_filter_enums.dart';

class SortFilterBottomSheet extends StatefulWidget {
  const SortFilterBottomSheet({
    super.key,
    required this.initialSortOrder,
    required this.initialFilterType,
  });

  final SortOrder initialSortOrder;
  final FilterType initialFilterType;

  @override
  State<SortFilterBottomSheet> createState() => _SortFilterBottomSheetState();
}

class _SortFilterBottomSheetState extends State<SortFilterBottomSheet> {
  late SortOrder _sortOrder;
  late FilterType _filterType;

  @override
  void initState() {
    super.initState();
    _sortOrder = widget.initialSortOrder;
    _filterType = widget.initialFilterType;
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
                  // Sort section header
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
                    child: Text(
                      '排序',
                      style: textTheme.labelLarge?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  // Sort options
                  RadioGroup<SortOrder>(
                    groupValue: _sortOrder,
                    onChanged: (v) => setState(() => _sortOrder = v!),
                    child: Column(
                      children: SortOrder.values
                          .map(
                            (sort) => RadioListTile<SortOrder>(
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
                  // Filter section header
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                    child: Text(
                      '篩選',
                      style: textTheme.labelLarge?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  // Filter chips
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Wrap(
                      spacing: 8,
                      children: FilterType.values
                          .map(
                            (filter) => ChoiceChip(
                              label: Text(filter.label),
                              selected: _filterType == filter,
                              onSelected: (_) =>
                                  setState(() => _filterType = filter),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(height: 1),
          // Action buttons
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => setState(() {
                      _sortOrder = SortOrder.dateNewest;
                      _filterType = FilterType.all;
                    }),
                    child: const Text('重設'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: FilledButton(
                    onPressed: () =>
                        Navigator.of(context).pop((_sortOrder, _filterType)),
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
