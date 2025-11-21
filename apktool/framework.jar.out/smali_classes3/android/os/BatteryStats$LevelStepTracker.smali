.class public final Landroid/os/BatteryStats$LevelStepTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelStepTracker"
.end annotation


# instance fields
.field public greylist-max-o mLastStepTime:J

.field public greylist-max-o mNumStepDurations:I

.field public final greylist-max-o mStepDurations:[J


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    new-array p1, p1, [J

    iput-object p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    return-void
.end method

.method public constructor greylist-max-o <init>(I[J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    iput p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const/4 p0, 0x0

    invoke-static {p2, p0, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private greylist-max-o appendHex(JILjava/lang/StringBuilder;)V
    .locals 4

    const/4 p0, 0x0

    :goto_0
    if-ltz p3, :cond_2

    shr-long v0, p1, p3

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 p3, p3, -0x4

    if-nez p0, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    const/16 p0, 0x9

    if-gt v0, p0, :cond_1

    add-int/lit8 v0, v0, 0x30

    int-to-char p0, v0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x57

    int-to-char p0, v0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public greylist-max-o addLevelSteps(IJJ)V
    .locals 13

    move-wide/from16 v0, p4

    iget v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    iget-wide v3, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    if-lez p1, :cond_2

    iget-object v5, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    sub-long v3, v0, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, p1, :cond_1

    array-length v8, v5

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v8, p1, v7

    int-to-long v8, v8

    div-long v8, v3, v8

    sub-long/2addr v3, v8

    const-wide v10, 0xffffffffffL

    cmp-long v12, v8, v10

    if-lez v12, :cond_0

    move-wide v8, v10

    :cond_0
    or-long/2addr v8, p2

    aput-wide v8, v5, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, p1

    array-length p1, v5

    if-le v2, p1, :cond_2

    array-length v2, v5

    :cond_2
    iput v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    return-void
.end method

.method public greylist-max-o clearTime()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    return-void
.end method

.method public greylist-max-o computeTimeEstimate(JJ[I)J
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    iget v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-wide/16 v2, -0x1

    if-gtz v0, :cond_0

    return-wide v2

    :cond_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v9, v4

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v0, :cond_2

    aget-wide v11, v1, v7

    const-wide/high16 v13, 0xff000000000000L

    and-long/2addr v13, v11

    const/16 v15, 0x30

    shr-long/2addr v13, v15

    const-wide/high16 v15, -0x100000000000000L

    and-long/2addr v15, v11

    const/16 v17, 0x38

    shr-long v15, v15, v17

    and-long v15, v15, p1

    cmp-long v15, v15, v4

    if-nez v15, :cond_1

    and-long v13, v13, p1

    cmp-long v13, v13, p3

    if-nez v13, :cond_1

    add-int/lit8 v8, v8, 0x1

    const-wide v13, 0xffffffffffL

    and-long/2addr v11, v13

    add-long/2addr v9, v11

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-gtz v8, :cond_3

    return-wide v2

    :cond_3
    if-eqz p5, :cond_4

    aput v8, p5, v6

    :cond_4
    int-to-long v0, v8

    div-long/2addr v9, v0

    const-wide/16 v0, 0x64

    mul-long/2addr v9, v0

    return-wide v9
.end method

.method public greylist-max-o computeTimePerLevel()J
    .locals 8

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    iget p0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_1

    aget-wide v4, v0, v3

    const-wide v6, 0xffffffffffL

    and-long/2addr v4, v6

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-long v3, p0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public greylist-max-o decodeEntryAt(ILjava/lang/String;)V
    .locals 20

    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    :cond_0
    :goto_0
    const/16 v7, 0x66

    const/16 v8, 0x46

    const/16 v9, 0x2d

    if-ge v2, v1, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v9, :cond_b

    add-int/lit8 v2, v2, 0x1

    const/16 v9, 0x44

    if-eq v10, v9, :cond_a

    if-eq v10, v8, :cond_0

    const/16 v8, 0x49

    if-eq v10, v8, :cond_9

    const/16 v8, 0x5a

    if-eq v10, v8, :cond_8

    const/16 v8, 0x64

    if-eq v10, v8, :cond_7

    if-eq v10, v7, :cond_0

    const/16 v7, 0x69

    if-eq v10, v7, :cond_6

    const/16 v7, 0x7a

    if-eq v10, v7, :cond_5

    const/16 v7, 0x4f

    if-eq v10, v7, :cond_4

    const/16 v7, 0x50

    if-eq v10, v7, :cond_3

    const/16 v7, 0x6f

    if-eq v10, v7, :cond_2

    const/16 v7, 0x70

    if-eq v10, v7, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v7, 0x4000000000000L

    goto :goto_1

    :cond_2
    const-wide/high16 v7, 0x1000000000000L

    goto :goto_1

    :cond_3
    const-wide/high16 v7, 0x400000000000000L

    goto :goto_1

    :cond_4
    const-wide/high16 v7, 0x100000000000000L

    goto :goto_1

    :cond_5
    const-wide/high16 v7, 0x3000000000000L

    goto :goto_1

    :cond_6
    const-wide/high16 v7, 0x8000000000000L

    goto :goto_1

    :cond_7
    const-wide/high16 v7, 0x2000000000000L

    goto :goto_1

    :cond_8
    const-wide/high16 v7, 0x300000000000000L    # 3.13151306251402E-294

    goto :goto_1

    :cond_9
    const-wide/high16 v7, 0x800000000000000L

    goto :goto_1

    :cond_a
    const-wide/high16 v7, 0x200000000000000L

    :goto_1
    or-long/2addr v5, v7

    goto :goto_0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v10, 0x0

    :cond_c
    :goto_2
    const/16 v12, 0x41

    const/16 v13, 0x39

    const/16 v14, 0x61

    const/4 v15, 0x4

    const/16 v3, 0x30

    if-ge v2, v1, :cond_f

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v9, :cond_f

    add-int/lit8 v2, v2, 0x1

    shl-long/2addr v10, v15

    if-lt v4, v3, :cond_d

    if-gt v4, v13, :cond_d

    add-int/lit8 v4, v4, -0x30

    :goto_3
    int-to-long v3, v4

    add-long/2addr v10, v3

    goto :goto_2

    :cond_d
    if-lt v4, v14, :cond_e

    if-gt v4, v7, :cond_e

    add-int/lit8 v4, v4, -0x57

    goto :goto_3

    :cond_e
    if-lt v4, v12, :cond_c

    if-gt v4, v8, :cond_c

    add-int/lit8 v4, v4, -0x37

    goto :goto_3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x28

    shl-long/2addr v10, v4

    const-wide v18, 0xff0000000000L

    and-long v10, v10, v18

    or-long v4, v5, v10

    const-wide/16 v16, 0x0

    :cond_10
    :goto_4
    if-ge v2, v1, :cond_13

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_13

    add-int/lit8 v2, v2, 0x1

    shl-long v16, v16, v15

    if-lt v6, v3, :cond_11

    if-gt v6, v13, :cond_11

    add-int/lit8 v6, v6, -0x30

    :goto_5
    int-to-long v10, v6

    add-long v16, v16, v10

    goto :goto_4

    :cond_11
    if-lt v6, v14, :cond_12

    if-gt v6, v7, :cond_12

    add-int/lit8 v6, v6, -0x57

    goto :goto_5

    :cond_12
    if-lt v6, v12, :cond_10

    if-gt v6, v8, :cond_10

    add-int/lit8 v6, v6, -0x37

    goto :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const-wide v1, 0xffffffffffL

    and-long v1, v16, v1

    or-long/2addr v1, v4

    aput-wide v1, v0, p1

    return-void
.end method

.method public greylist-max-o encodeEntryAt(ILjava/lang/StringBuilder;)V
    .locals 9

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xffffffffffL

    and-long/2addr v2, v0

    const-wide v4, 0xff0000000000L

    and-long/2addr v4, v0

    const/16 p1, 0x28

    shr-long/2addr v4, p1

    long-to-int p1, v4

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v0

    const/16 v6, 0x30

    shr-long/2addr v4, v6

    long-to-int v4, v4

    const-wide/high16 v5, -0x100000000000000L

    and-long/2addr v0, v5

    const/16 v5, 0x38

    shr-long/2addr v0, v5

    long-to-int v0, v0

    and-int/lit8 v1, v4, 0x3

    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v1, v5, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v8, :cond_1

    if-eq v1, v7, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x7a

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v1, 0x6f

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v1, 0x66

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_4

    const/16 v1, 0x70

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, v4, 0x8

    if-eqz v1, :cond_5

    const/16 v1, 0x69

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, v0, 0x3

    add-int/2addr v1, v5

    if-eq v1, v5, :cond_9

    if-eq v1, v6, :cond_8

    if-eq v1, v8, :cond_7

    if-eq v1, v7, :cond_6

    goto :goto_1

    :cond_6
    const/16 v1, 0x5a

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 v1, 0x44

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const/16 v1, 0x4f

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    const/16 v1, 0x46

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_a

    const/16 v1, 0x50

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_b

    const/16 v0, 0x49

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v4, p1

    invoke-direct {p0, v4, v5, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x24

    invoke-direct {p0, v2, v3, p1, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    return-void
.end method

.method public greylist-max-o getDurationAt(I)J
    .locals 2

    iget-object p0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide p0, p0, p1

    const-wide v0, 0xffffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public greylist-max-o getInitModeAt(I)I
    .locals 2

    iget-object p0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide p0, p0, p1

    const-wide/high16 v0, 0xff000000000000L

    and-long/2addr p0, v0

    const/16 v0, 0x30

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public greylist-max-o getLevelAt(I)I
    .locals 2

    iget-object p0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide p0, p0, p1

    const-wide v0, 0xff0000000000L

    and-long/2addr p0, v0

    const/16 v0, 0x28

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public greylist-max-o getModModeAt(I)I
    .locals 2

    iget-object p0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide p0, p0, p1

    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr p0, v0

    const/16 v0, 0x38

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public greylist-max-o init()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    return-void
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    array-length v1, v1

    if-gt v0, v1, :cond_1

    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Landroid/os/ParcelFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "more step durations than available: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .locals 4

    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
