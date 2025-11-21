.class public Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
.super Ljava/lang/Object;
.source "ItemExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/ItemExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Seed"
.end annotation


# static fields
.field private static final blacklist DELIMITER:Ljava/lang/String; = ",@,#,"

.field private static final blacklist FIELD_NUMBER:I = 0x9


# instance fields
.field private blacklist mDuration:J

.field private blacklist mFileSize:J

.field private blacklist mItemType:Ljava/lang/String;

.field private blacklist mItemUri:Landroid/net/Uri;

.field private blacklist mMimeType:Ljava/lang/String;

.field private blacklist mObjectId:Ljava/lang/String;

.field private blacklist mProviderId:Ljava/lang/String;

.field private blacklist mSubtitle:Landroid/net/Uri;

.field private blacklist mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDuration(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFileSize(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmItemType(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmItemUri(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMimeType(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmObjectId(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProviderId(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubtitle(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTitle(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/extension/ItemExtractor-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;-><init>()V

    return-void
.end method

.method public static blacklist parseSeedString(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "null"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parseSeedString : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ItemExtractor"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ",@,#,"

    invoke-direct {v1, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-eq p0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "count : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    move-object v6, v4

    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, -0x1

    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-wide v10, v8

    :goto_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    :try_start_2
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v0

    :catch_2
    :goto_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    :try_start_3
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    new-instance v1, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    invoke-direct {v1}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    iput-object v3, v1, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    iput-object v5, v1, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    iput-object v6, v1, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    iput-wide v10, v1, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    iput-object v4, v1, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    iput-wide v8, v1, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    return-object v1
.end method

.method public static blacklist parseSeedStringUsingSplit(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    .locals 12

    const-string/jumbo v0, "null"

    const-string v1, "ItemExtractor"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, "seedString == null"

    invoke-static {v1, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseSeedStringUsingSplit : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ",@,#,"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "count : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v3, 0x1

    aget-object v3, p0, v3

    const/4 v4, 0x2

    aget-object v4, p0, v4

    const/4 v5, 0x3

    aget-object v5, p0, v5

    const/4 v6, 0x4

    aget-object v6, p0, v6

    :try_start_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    move-object v6, v2

    :goto_1
    const/4 v7, 0x5

    aget-object v7, p0, v7

    const-wide/16 v8, -0x1

    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-wide v10, v8

    :goto_2
    const/4 v7, 0x6

    aget-object v7, p0, v7

    :try_start_2
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    :catch_2
    :goto_3
    const/4 v0, 0x7

    aget-object v0, p0, v0

    const/16 v7, 0x8

    aget-object p0, p0, v7

    :try_start_3
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    new-instance p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    iput-wide v10, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    iput-object v2, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    iput-wide v8, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    return-object p0
.end method


# virtual methods
.method public blacklist getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    return-wide v0
.end method

.method public blacklist getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    return-wide v0
.end method

.method public blacklist getItemType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getItemUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getObjectID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getProviderID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSeedString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    const-string/jumbo v1, "null"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",@,#,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSubtitle()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    return-object p0
.end method
