.class Landroid/app/DownloadManager$SecCursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecCursorTranslator"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/app/DownloadManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p2, p0, Landroid/app/DownloadManager$SecCursorTranslator;->mBaseUri:Landroid/net/Uri;

    return-void
.end method

.method private blacklist getErrorCode(I)J
    .locals 1

    const/16 p0, 0x190

    const/16 v0, 0x1e8

    if-gt p0, p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 p0, 0x1f4

    if-gt p0, p1, :cond_2

    const/16 p0, 0x2bc

    if-ge p1, p0, :cond_2

    :cond_1
    int-to-long p0, p1

    return-wide p0

    :cond_2
    const/16 p0, 0xc6

    if-eq p1, p0, :cond_6

    const/16 p0, 0xc7

    if-eq p1, p0, :cond_5

    if-eq p1, v0, :cond_4

    const/16 p0, 0x1e9

    if-eq p1, p0, :cond_3

    int-to-long p0, p1

    return-wide p0

    :cond_3
    const-wide/16 p0, 0x3f0

    return-wide p0

    :cond_4
    const-wide/16 p0, 0x3f1

    return-wide p0

    :cond_5
    const-wide/16 p0, 0x3ef

    return-wide p0

    :cond_6
    const-wide/16 p0, 0x3ee

    return-wide p0
.end method

.method private blacklist getLocalUri()Ljava/lang/String;
    .locals 6

    const-string v0, "destination"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v0, "hint"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v0, "_data"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v3

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/16 v4, 0x6

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    const-string v0, "local_filename"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v3

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "_id"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p0, p0, Landroid/app/DownloadManager$SecCursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {p0, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getPausedReason(I)J
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-wide/16 p0, 0x4

    return-wide p0

    :pswitch_0
    const-wide/16 p0, 0x3

    return-wide p0

    :pswitch_1
    const-wide/16 p0, 0x2

    return-wide p0

    :pswitch_2
    const-wide/16 p0, 0x1

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getUnderlyingLong(Ljava/lang/String;)J
    .locals 0

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isLongColumn(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetLONG_COLUMNS()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist translateLong(Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p1, "total_bytes"

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_2
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateStatus(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_3
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getReason(I)J

    move-result-wide p0

    return-wide p0

    :cond_4
    const-string v0, "bytes_so_far"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "current_bytes"

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_5
    const-string v0, "dd_contentSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_6
    const-string v0, "downloadmethod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_7
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_8
    const-string/jumbo v0, "storage_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo p1, "storagetype"

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_9
    const-string/jumbo v0, "range_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_a
    const-string/jumbo v0, "range_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_b
    const-string/jumbo v0, "range_first_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_c
    const-string p1, "lastmod"

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist translateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string/jumbo v0, "media_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p1, "mimetype"

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "local_filename"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "_data"

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "dd_fileName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, "dd_vendor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v0, "dd_majorVersion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "dd_primaryMimeType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v0, "dd_description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-direct {p0}, Landroid/app/DownloadManager$SecCursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist getBlob(I)[B
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist getColumnCount()I
    .locals 0

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public whitelist getColumnIndex(Ljava/lang/String;)I
    .locals 0

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No such column: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getColumnName(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-ltz p1, :cond_0

    if-ge p1, p0, :cond_0

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid column index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " columns exist"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public whitelist getDouble(I)D
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide p0

    long-to-double p0, p0

    return-wide p0
.end method

.method public whitelist getFloat(I)F
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getDouble(I)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public whitelist getInt(I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public whitelist getLong(I)J
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getReason(I)J
    .locals 2

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateStatus(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getErrorCode(I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getPausedReason(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist getShort(I)S
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide p0

    long-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist translateStatus(I)I
    .locals 0

    const/4 p0, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 p0, 0x10

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x4

    :pswitch_3
    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/high16 p0, 0x10000

    :pswitch_6
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xb5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
