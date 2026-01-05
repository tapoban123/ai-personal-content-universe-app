enum FilterFileType { PDF, IMAGE, TEXT, NOTE, ALL }

enum FilterTime { TODAY, LAST_7_DAYS, LAST_30_DAYS, RANDOM }

enum SortOption {
  NONE,
  RECENTLY_ADDED,
  OLDEST_FIRST,
  RECENTLY_UPDATED,
  NAME_A_Z,
  NAME_Z_A,
  FILE_SIZE_DESC,
  FILE_SIZE_ASC,
}

class FilterAndSortOptions {
  final FilterFileType fileType;
  final bool pinnedOnly;
  final FilterTime time;
  final SortOption sortOption;

  FilterAndSortOptions({
    this.fileType = FilterFileType.ALL,
    this.time = FilterTime.RANDOM,
    this.pinnedOnly = false,
    this.sortOption = SortOption.NONE,
  });
}
