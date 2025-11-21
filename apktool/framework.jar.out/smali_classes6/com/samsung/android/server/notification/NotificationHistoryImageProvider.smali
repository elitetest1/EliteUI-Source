.class public Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;
.super Landroid/content/ContentProvider;
.source "NotificationHistoryImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final blacklist AUTHORITY:Ljava/lang/String; = "com.android.server.notification.provider"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist DATABASE_VERSION:I = 0x1

.field private static final blacklist HISTORY_RETENTION_DAYS:J = 0x1L

.field private static final blacklist HISTORY_RETENTION_MS:J = 0x5265c00L

.field public static final blacklist KEY_IMAGE:Ljava/lang/String; = "image"

.field public static final blacklist KEY_TIME:Ljava/lang/String; = "time"

.field public static final blacklist KEY_URI_ID:Ljava/lang/String; = "uri_id"

.field private static final blacklist SETTINGS_TABLE:Ljava/lang/String; = "NotiHistoryImgProvider"

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationHistoryImageProvider"

.field static final blacklist URL:Ljava/lang/String; = "content://com.android.server.notification.provider"

.field private static final blacklist sDatabaseName:Ljava/lang/String; = "notihistoryimg.db"

.field private static blacklist sNotificationHistoryImageProvider:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;


# instance fields
.field private blacklist mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "content://com.android.server.notification.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    sput-object p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->sNotificationHistoryImageProvider:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    return-void
.end method

.method private blacklist addImageToCache(Landroid/content/ContentValues;)J
    .locals 7

    iget-object p0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const-wide/16 v0, -0x1

    const-string v2, "NotificationHistoryImageProvider"

    if-nez p0, :cond_0

    const-string p0, "Error getting mOpenHelper in addImageToCache"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Error getting DB in addImageToCache"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_1
    :try_start_0
    const-string v3, "Added to cache image"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "NotiHistoryImgProvider"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    :try_start_1
    const-string v0, "Failed to cache image"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-wide p0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    return-wide p0

    :catch_1
    move-exception p0

    move-wide v5, v0

    move-object v0, p0

    move-wide p0, v5

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0
.end method

.method public static blacklist getInstance()Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->sNotificationHistoryImageProvider:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    invoke-direct {v0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->sNotificationHistoryImageProvider:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    :cond_0
    sget-object v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->sNotificationHistoryImageProvider:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    return-object v0
.end method


# virtual methods
.method public blacklist addImageToCache(Ljava/lang/String;[BJ)J
    .locals 7

    const-string/jumbo v0, "uri= "

    const-wide/16 v1, -0x1

    const-string v3, "NotificationHistoryImageProvider"

    if-eqz p2, :cond_4

    array-length v4, p2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    if-nez p0, :cond_1

    const-string p0, "Error getting mOpenHelper in addImageToCache"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "Error getting DB in addImageToCache"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_2
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "uri_id"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "image"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v5, "time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", image= "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", postedTime= "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "NotiHistoryImgProvider"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long p2, p0, v1

    if-nez p2, :cond_3

    :try_start_1
    const-string p2, "Failed to cache image"

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-wide p0

    :catch_0
    move-exception p2

    move-wide v1, p0

    goto :goto_0

    :cond_3
    return-wide p0

    :catch_1
    move-exception p2

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_4
    :goto_1
    const-string p0, "addImageToCache image is null or empty."

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    const-string v0, "Failed to delete due to unknown reason. "

    iget-object v1, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const/4 v2, -0x1

    const-string v3, "NotificationHistoryImageProvider"

    if-nez v1, :cond_0

    const-string p0, "Error getting mOpenHelper in delete db"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "Failed to delete db."

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string v4, "NotiHistoryImgProvider"

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v2
.end method

.method public blacklist deleteRows(J)Z
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const/4 v0, 0x0

    const-string v1, "NotificationHistoryImageProvider"

    if-nez p0, :cond_0

    const-string p0, "Error getting mOpenHelper in deleteRows"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Error getting DB in deleteRows"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-wide/32 v2, 0x5265c00

    sub-long/2addr p1, v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "time<="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NotiHistoryImgProvider"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "deletedRows= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", deleteTime= "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist deleteRows(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const/4 v0, 0x0

    const-string v1, "NotificationHistoryImageProvider"

    if-nez p0, :cond_0

    const-string p0, "Error getting mOpenHelper in deleteRows"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Error getting DB in deleteRows"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string/jumbo v0, "uri_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotiHistoryImgProvider"

    invoke-virtual {p0, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "deletedRows, uri= "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->addImageToCache(Landroid/content/ContentValues;)J

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onCreate()Z
    .locals 2

    new-instance v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const/4 v1, 0x0

    const-string v2, "NotificationHistoryImageProvider"

    if-nez v0, :cond_0

    const-string p0, "Error getting mOpenHelper in getCachedImage"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p0, "Error getting DB in getCachedImage"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v4, "NotiHistoryImgProvider"

    const/4 v8, 0x0

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_2
    return-object p2
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist updatePostedTime(JLjava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->mOpenHelper:Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;

    const/4 v0, 0x0

    const-string v1, "NotificationHistoryImageProvider"

    if-nez p0, :cond_0

    const-string p0, "Error getting mOpenHelper in updatePostedTime"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Error getting DB in updatePostedTime"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string/jumbo p3, "uri_id=?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v1, "NotiHistoryImgProvider"

    invoke-virtual {p0, v1, v0, p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
