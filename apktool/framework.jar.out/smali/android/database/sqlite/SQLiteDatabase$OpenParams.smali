.class public final Landroid/database/sqlite/SQLiteDatabase$OpenParams;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCacheSize:I

.field private final greylist-max-o mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final greylist-max-o mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final blacklist mIdleConnectionShrinkTimeout:J

.field private final greylist-max-o mIdleConnectionTimeout:J

.field private final greylist-max-o mJournalMode:Ljava/lang/String;

.field private final greylist-max-o mLookasideSlotCount:I

.field private final greylist-max-o mLookasideSlotSize:I

.field private final greylist-max-o mOpenFlags:I

.field private final greylist-max-o mSyncMode:Ljava/lang/String;

.field private final blacklist mUserDataRecovery:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCacheSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCacheSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorFactory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmErrorHandler(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleConnectionShrinkTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J
    .locals 2

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionShrinkTimeout:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleConnectionTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J
    .locals 2

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJournalMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mJournalMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLookasideSlotCount(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLookasideSlotSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpenFlags(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mSyncMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserDataRecovery(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mUserDataRecovery:Z

    return p0
.end method

.method private constructor blacklist <init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iput-object p3, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    iput p4, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    iput p5, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    iput-wide p6, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    iput-wide p8, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionShrinkTimeout:J

    iput-object p10, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mJournalMode:Ljava/lang/String;

    iput-object p11, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mSyncMode:Ljava/lang/String;

    iput p12, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCacheSize:I

    iput-boolean p13, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mUserDataRecovery:Z

    const/high16 p2, 0x20000000

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    and-int/lit16 p1, p1, -0x401

    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return-void

    :cond_0
    if-eqz p10, :cond_1

    const-string p2, "WAL"

    invoke-virtual {p10, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return-void

    :cond_1
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZLandroid/database/sqlite/SQLiteDatabase-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;-><init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public whitelist getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object p0
.end method

.method public whitelist getErrorHandler()Landroid/database/DatabaseErrorHandler;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object p0
.end method

.method public whitelist getIdleConnectionTimeout()J
    .locals 2

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-wide v0
.end method

.method public whitelist getJournalMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mJournalMode:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getLookasideSlotCount()I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    return p0
.end method

.method public whitelist getLookasideSlotSize()I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    return p0
.end method

.method public whitelist getOpenFlags()I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return p0
.end method

.method public whitelist getSynchronousMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mSyncMode:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 1

    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    return-object v0
.end method
