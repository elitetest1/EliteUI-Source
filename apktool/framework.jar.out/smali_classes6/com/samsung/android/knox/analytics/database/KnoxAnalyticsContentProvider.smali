.class public Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;
.super Landroid/content/ContentProvider;
.source "KnoxAnalyticsContentProvider.java"


# static fields
.field private static final blacklist B2C_FEATURE_PATH_ID:I = 0x7

.field private static final blacklist CLEANED_EVENTS_PATH_ID:I = 0x5

.field private static final blacklist DATABASE_SIZE_PATH_ID:I = 0x2

.field private static final blacklist DEBUG_PATH_ID:I = 0x9

.field private static final blacklist EVENTS_PATH_ID:I = 0x1

.field private static final blacklist FEATURES_BLACKLIST_PATH_ID:I = 0x3

.field private static final blacklist FEATURES_WHITELIST_PATH_ID:I = 0x6

.field private static final blacklist RESET_EVENT_TABLES_PATH_ID:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "[KnoxAnalytics] KnoxAnalyticsContentProvider"

.field private static final blacklist VERSIONING_PATH_ID:I = 0x4

.field private static final blacklist sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private volatile blacklist mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

.field private blacklist mDeactivationLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "events"

    const/4 v2, 0x1

    const-string v3, "com.samsung.android.knox.analytics.provider"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "size"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "feature_blocklist"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "version"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "cleaned_events"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "features_whitelist"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "package_feature_b2c"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "reset"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "debug"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDeactivationLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist deleteFromAllEventTables()J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDeactivationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteFromAllEventTables()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist deleteFromB2CFeatures(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteFromB2CFeatures("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteB2CFeatures([Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist deleteFromEvents(Ljava/lang/String;[Ljava/lang/String;I)J
    .locals 11

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "deleteFromEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_6

    array-length v3, p2

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "deleteFromEvents(): empty selectionArgs[0]"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_1
    :try_start_0
    aget-object v4, p2, v3

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    array-length v4, p2

    const/4 v5, 0x2

    const/4 v8, 0x1

    if-ne v4, v5, :cond_2

    aget-object v4, p2, v8

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, p2, v8

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-wide v9, v1

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v4, -0x1

    sparse-switch p2, :sswitch_data_0

    :goto_1
    move v3, v4

    goto :goto_2

    :sswitch_0
    const-string p2, "deleteUntilTargetDbSize"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    :sswitch_1
    const-string p2, "deleteUpToId"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v8

    goto :goto_2

    :sswitch_2
    const-string p2, "deleteChunkBySize"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    packed-switch v3, :pswitch_data_0

    const-string p0, "deleteFromEvents(): invalid selection"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :pswitch_0
    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteUntilTargetDbSize(J)J

    move-result-wide p0

    return-wide p0

    :pswitch_1
    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteUpTo(J)J

    move-result-wide p0

    return-wide p0

    :pswitch_2
    move-object v5, p0

    move-wide v8, v9

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteEventChunk(JJI)J

    move-result-wide p0

    return-wide p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "deleteFromEvents(): invalid number "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_6
    :goto_3
    const-string p0, "deleteFromEvents(): no selectionArgs"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2e2e60e6 -> :sswitch_2
        -0x2a299844 -> :sswitch_1
        -0x10cc55d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist deleteFromFeaturesBlacklist(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string p2, "deleteFromFeaturesBlacklist()"

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteFeatureBlacklist()J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist deleteFromFeaturesWhitelist(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteFromFeaturesWhitelist("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteFeatureWhitelist([Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist deleteFromVersion(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4

    sget-object p1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "deleteFromVersion()"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_2

    array-length v2, p2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "deleteFromVersion(): empty selectionArgs[0]"

    invoke-static {p1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_1
    :try_start_0
    aget-object p1, p2, v2

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteFromVersion(J)J

    move-result-wide p0

    return-wide p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "deleteFromVersion(): invalid number "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_2
    :goto_0
    const-string p0, "deleteFromVersion(): no selectionArgs"

    invoke-static {p1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private blacklist getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method private blacklist getFinalChunkSize(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "getFinalChunkSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "chunk_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCompressedEventsCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    rem-int/lit16 p0, p0, 0x3e8

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "query(): Selection argument must be null or multiples of 1000"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object p1
.end method

.method private blacklist insertIntoB2CFeatures(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addB2CFeatures(Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist insertIntoCleanedEvents(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoCleanedEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addCleanedEvent(Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private blacklist insertIntoEvents(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addEvent(Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private blacklist insertIntoFeaturesBlacklist(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addFeatureBlacklist(Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist insertIntoFeaturesWhitelist(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoFeaturesWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addFeatureWhitelist(Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist insertIntoVersion(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addVersioningBlob(Landroid/content/ContentValues;)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private blacklist queryEvents([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, p1

    if-lez v2, :cond_3

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "lastEventId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "count"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "chunkSizePlainEvents"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getLastId()Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventCount()Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/16 p0, 0x3e8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventChunk(Ljava/lang/Integer;Z)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getFinalChunkSize(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventChunk(Ljava/lang/Integer;Z)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d71d6b -> :sswitch_2
        0x5a7510f -> :sswitch_1
        0x1e424ddf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "performCompressedEventsTransaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "notifyVersioningCompleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "saveCache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "insertBulkEvents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "databaseClean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "dumpCache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "call(): invalid method "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->performCompressedEventsTransaction(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->notifyVersioningCompleted()V

    return-object v0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addBulkEvents(Landroid/os/Bundle;)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-ltz p3, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p3, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_6
    :goto_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p3, "lastEventId"

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->callDatabaseClean(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->isAnalyticsTestDevice(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "call(): "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can only be called by KnoxAnalyticsTestApp"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->debugCall(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x52576212 -> :sswitch_5
        -0x50df9672 -> :sswitch_4
        -0x3ff82b9c -> :sswitch_3
        0x9666405 -> :sswitch_2
        0x181ec758 -> :sswitch_1
        0x51f3f663 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist callDatabaseClean(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const-string/jumbo p1, "targetDbSize"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string p1, "callDatabaseClean(): wrong extras!"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "callDatabaseClean()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->cleanCompressedEventsTable(J)J

    move-result-wide p1

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "deletedEventsCount"

    invoke-virtual {p0, v4, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "deletedSizeBytes"

    sub-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public blacklist cleanCompressedEventsTable(J)J
    .locals 13

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    cmp-long v7, v0, p1

    if-lez v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v7, 0x1

    long-to-int v9, v7

    invoke-virtual {p0, v9}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getTotalCompressedEvents(I)I

    move-result v9

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteCompressedEventChunk(J)J

    move-result-wide v7

    sget-object v10, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "IT="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " curS="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " tlDel="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " nxtCh="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " delRows="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v7, v2

    if-nez v0, :cond_0

    const-string p0, "cleanCompressedEventsTable(): error deleting or db is empty"

    invoke-static {v10, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    int-to-long v0, v9

    add-long/2addr v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "cleanCompressedEventsTable(): deletedEvents = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " iteration = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v5
.end method

.method public blacklist debugCall(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$Debug;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p1, "result"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceProviderCaller(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string p0, "delete(): no match for URI"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromAllEventTables()J

    move-result-wide p2

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromB2CFeatures(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromFeaturesWhitelist(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2, p3, v2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromEvents(Ljava/lang/String;[Ljava/lang/String;I)J

    move-result-wide p2

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromVersion(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromFeaturesBlacklist(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromEvents(Ljava/lang/String;[Ljava/lang/String;I)J

    move-result-wide p2

    :goto_0
    long-to-int p2, p2

    if-lez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    const-wide/16 v0, -0x1

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    return p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string p1, "getType()"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insert()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceProviderCaller(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const-string p0, "insert(): no match for URI"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoB2CFeatures(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoFeaturesWhitelist(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoCleanedEvents(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoVersion(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoFeaturesBlacklist(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoEvents(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "insert(): notifyChange("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    const-wide/16 v0, -0x1

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_6
    return-object p1
.end method

.method public whitelist onCreate()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    sget-object p5, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "query()"

    invoke-static {p5, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDeactivationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceProviderCaller(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p0, "query(): no match for URI"

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, p4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getB2CFeaturesCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :pswitch_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getFeatureWhitelistCursor()Landroid/database/Cursor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :pswitch_2
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCleanedEventsCursor()Landroid/database/Cursor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :pswitch_3
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getVersioningBlob()Landroid/database/Cursor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :pswitch_4
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getFeatureBlacklistCursor()Landroid/database/Cursor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :pswitch_5
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeCursor()Landroid/database/Cursor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :pswitch_6
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->queryEvents([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    invoke-static {p5, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "update()"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
