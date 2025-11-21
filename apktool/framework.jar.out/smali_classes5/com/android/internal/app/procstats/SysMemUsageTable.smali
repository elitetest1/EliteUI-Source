.class public Lcom/android/internal/app/procstats/SysMemUsageTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "SysMemUsageTable.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    return-void
.end method

.method private blacklist dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-byte p2, p4

    invoke-virtual {p0, p2, p5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide p3

    const-wide/16 v0, 0x400

    mul-long/2addr p3, v0

    invoke-static {p1, p3, p4}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string p3, " min, "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p3, p5, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide p3

    mul-long/2addr p3, v0

    invoke-static {p1, p3, p4}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string p3, " avg, "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x2

    invoke-virtual {p0, p2, p5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide p2

    mul-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string p0, " max"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist mergeSysMemUsage([JI[JI)V
    .locals 17

    aget-wide v0, p0, p1

    aget-wide v2, p2, p3

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/16 v7, 0x10

    const/4 v8, 0x1

    if-nez v6, :cond_0

    aput-wide v2, p0, p1

    :goto_0
    if-ge v8, v7, :cond_3

    add-int v0, p1, v8

    add-int v1, p3, v8

    aget-wide v1, p2, v1

    aput-wide v1, p0, v0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    add-long v4, v0, v2

    aput-wide v4, p0, p1

    :goto_1
    if-ge v8, v7, :cond_3

    add-int v6, p1, v8

    aget-wide v9, p0, v6

    add-int v11, p3, v8

    aget-wide v12, p2, v11

    cmp-long v9, v9, v12

    if-lez v9, :cond_1

    aput-wide v12, p0, v6

    :cond_1
    add-int/lit8 v9, v6, 0x1

    aget-wide v12, p0, v9

    long-to-double v12, v12

    long-to-double v14, v0

    mul-double/2addr v12, v14

    add-int/lit8 v10, v11, 0x1

    aget-wide v14, p2, v10

    long-to-double v14, v14

    move/from16 v16, v8

    long-to-double v7, v2

    mul-double/2addr v14, v7

    add-double/2addr v12, v14

    long-to-double v7, v4

    div-double/2addr v12, v7

    double-to-long v7, v12

    aput-wide v7, p0, v9

    add-int/lit8 v6, v6, 0x2

    aget-wide v7, p0, v6

    add-int/lit8 v11, v11, 0x2

    aget-wide v11, p2, v11

    cmp-long v7, v7, v11

    if-gez v7, :cond_2

    aput-wide v11, p0, v6

    :cond_2
    add-int/lit8 v8, v16, 0x3

    const/16 v7, 0x10

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    const/4 v9, 0x0

    move v10, v9

    const/4 v0, -0x1

    :goto_0
    array-length v2, v6

    if-ge v10, v2, :cond_6

    move v11, v9

    const/4 v2, -0x1

    :goto_1
    array-length v3, v7

    if-ge v11, v3, :cond_5

    aget v3, v6, v10

    aget v4, v7, v11

    add-int v5, v3, v4

    mul-int/lit8 v5, v5, 0x10

    int-to-byte v12, v5

    move-object/from16 v13, p0

    invoke-virtual {v13, v12, v9}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-lez v12, :cond_4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v12, v6

    const/4 v8, 0x1

    if-le v12, v8, :cond_1

    if-eq v0, v3, :cond_0

    move v0, v3

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    :goto_2
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v12, v3

    goto :goto_3

    :cond_1
    move v12, v0

    :goto_3
    array-length v0, v7

    if-le v0, v8, :cond_3

    if-eq v2, v4, :cond_2

    move v0, v4

    goto :goto_4

    :cond_2
    const/4 v0, -0x1

    :goto_4
    invoke-static {v1, v0, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v8, v4

    goto :goto_5

    :cond_3
    move v8, v2

    :goto_5
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " samples:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  Cached"

    move v4, v5

    const/4 v5, 0x1

    move-object/from16 v2, p2

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  Free"

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  ZRam"

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  Kernel"

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  Native"

    const/16 v5, 0xd

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    move v2, v8

    move v0, v12

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public blacklist getTotalMemUsage()[J
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [J

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v5

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v4

    invoke-static {v0, v2, v5, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist mergeStats(I[JI)V
    .locals 1

    int-to-byte p1, p1

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getOrAddKey(BI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object p0

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result p1

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    return-void
.end method

.method public blacklist mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v4

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
