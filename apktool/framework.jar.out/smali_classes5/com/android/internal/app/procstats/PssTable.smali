.class public Lcom/android/internal/app/procstats/PssTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "PssTable.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    return-void
.end method

.method public static blacklist mergeStats([JIIJJJJJJJJJ)V
    .locals 16

    move/from16 v0, p2

    move-wide/from16 v1, p5

    move-wide/from16 v3, p11

    move-wide/from16 v5, p17

    aget-wide v7, p0, p1

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_0

    int-to-long v7, v0

    aput-wide v7, p0, p1

    add-int/lit8 v0, p1, 0x1

    aput-wide p3, p0, v0

    add-int/lit8 v0, p1, 0x2

    aput-wide v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    aput-wide p7, p0, v0

    add-int/lit8 v0, p1, 0x4

    aput-wide p9, p0, v0

    add-int/lit8 v0, p1, 0x5

    aput-wide v3, p0, v0

    add-int/lit8 v0, p1, 0x6

    aput-wide p13, p0, v0

    add-int/lit8 v0, p1, 0x7

    aput-wide p15, p0, v0

    add-int/lit8 v0, p1, 0x8

    aput-wide v5, p0, v0

    add-int/lit8 v0, p1, 0x9

    aput-wide p19, p0, v0

    return-void

    :cond_0
    int-to-long v9, v0

    add-long/2addr v9, v7

    aput-wide v9, p0, p1

    add-int/lit8 v11, p1, 0x1

    aget-wide v12, p0, v11

    cmp-long v12, v12, p3

    if-lez v12, :cond_1

    aput-wide p3, p0, v11

    :cond_1
    add-int/lit8 v11, p1, 0x2

    aget-wide v12, p0, v11

    long-to-double v12, v12

    long-to-double v7, v7

    mul-double/2addr v12, v7

    long-to-double v1, v1

    int-to-double v14, v0

    mul-double/2addr v1, v14

    add-double/2addr v12, v1

    long-to-double v0, v9

    div-double/2addr v12, v0

    double-to-long v9, v12

    aput-wide v9, p0, v11

    add-int/lit8 v2, p1, 0x3

    aget-wide v9, p0, v2

    cmp-long v9, v9, p7

    if-gez v9, :cond_2

    aput-wide p7, p0, v2

    :cond_2
    add-int/lit8 v2, p1, 0x4

    aget-wide v9, p0, v2

    cmp-long v9, v9, p9

    if-lez v9, :cond_3

    aput-wide p9, p0, v2

    :cond_3
    add-int/lit8 v2, p1, 0x5

    aget-wide v9, p0, v2

    long-to-double v9, v9

    mul-double/2addr v9, v7

    long-to-double v3, v3

    mul-double/2addr v3, v14

    add-double/2addr v9, v3

    div-double/2addr v9, v0

    double-to-long v3, v9

    aput-wide v3, p0, v2

    add-int/lit8 v2, p1, 0x6

    aget-wide v3, p0, v2

    cmp-long v3, v3, p13

    if-gez v3, :cond_4

    aput-wide p13, p0, v2

    :cond_4
    add-int/lit8 v2, p1, 0x7

    aget-wide v2, p0, v2

    add-int/lit8 v2, p1, 0x8

    aget-wide v3, p0, v2

    long-to-double v3, v3

    mul-double/2addr v3, v7

    long-to-double v5, v5

    mul-double/2addr v5, v14

    add-double/2addr v3, v5

    div-double/2addr v3, v0

    double-to-long v0, v3

    aput-wide v0, p0, v2

    add-int/lit8 v0, p1, 0x9

    aget-wide v1, p0, v0

    cmp-long v1, v1, p19

    if-gez v1, :cond_5

    aput-wide p19, p0, v0

    :cond_5
    return-void
.end method

.method public static blacklist mergeStats([JI[JI)V
    .locals 23

    aget-wide v0, p2, p3

    long-to-int v4, v0

    add-int/lit8 v0, p3, 0x1

    aget-wide v5, p2, v0

    add-int/lit8 v0, p3, 0x2

    aget-wide v7, p2, v0

    add-int/lit8 v0, p3, 0x3

    aget-wide v9, p2, v0

    add-int/lit8 v0, p3, 0x4

    aget-wide v11, p2, v0

    add-int/lit8 v0, p3, 0x5

    aget-wide v13, p2, v0

    add-int/lit8 v0, p3, 0x6

    aget-wide v15, p2, v0

    add-int/lit8 v0, p3, 0x7

    aget-wide v17, p2, v0

    add-int/lit8 v0, p3, 0x8

    aget-wide v19, p2, v0

    add-int/lit8 v0, p3, 0x9

    aget-wide v21, p2, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-static/range {v2 .. v22}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    return-void
.end method

.method public static blacklist writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V
    .locals 13

    const-wide v0, 0x10500000005L

    aget-wide v2, p1, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v0, p2, 0x1

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0x2

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-wide v11, p1, v0

    const-wide v5, 0x10b00000006L

    move-object v4, p0

    invoke-static/range {v4 .. v12}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    add-int/lit8 v0, p2, 0x4

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-wide v11, p1, v0

    const-wide v5, 0x10b00000007L

    invoke-static/range {v4 .. v12}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    add-int/lit8 v0, p2, 0x7

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0x8

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x9

    aget-wide v11, p1, v0

    const-wide v5, 0x10b00000008L

    invoke-static/range {v4 .. v12}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    return-void
.end method


# virtual methods
.method blacklist getRssMeanAndMax(I)[J
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object p0

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result p1

    add-int/lit8 v0, p1, 0x8

    aget-wide v0, p0, v0

    add-int/lit8 p1, p1, 0x9

    aget-wide p0, p0, p1

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    const/4 v0, 0x1

    aput-wide p0, v2, v0

    return-object v2
.end method

.method public blacklist mergeStats(IIJJJJJJJJJ)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-byte v1, v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getOrAddKey(BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v3

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    move-wide/from16 v21, p19

    invoke-static/range {v2 .. v22}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    return-void
.end method

.method public blacklist mergeStats(Lcom/android/internal/app/procstats/PssTable;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/procstats/PssTable;->getOrAddKey(BI)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v3

    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v5

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    invoke-static {v4, v3, v5, v2}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JI[JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist writeStatsToProtoForKey(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object p0

    invoke-static {p2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result p2

    invoke-static {p1, p0, p2}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V

    return-void
.end method
