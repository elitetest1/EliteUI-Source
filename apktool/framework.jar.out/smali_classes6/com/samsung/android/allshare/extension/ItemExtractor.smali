.class public Lcom/samsung/android/allshare/extension/ItemExtractor;
.super Ljava/lang/Object;
.source "ItemExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    }
.end annotation


# static fields
.field private static final blacklist CLASS_TAG:Ljava/lang/String; = "ItemExtractor"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist create(Ljava/lang/String;)Lcom/samsung/android/allshare/Item;
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->parseSeedStringUsingSplit(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "ItemExtractor"

    if-nez p0, :cond_0

    const-string p0, "create : return seed is null"

    invoke-static {v1, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getItemType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$MediaType;->enumToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getObjectID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getProviderID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    const-string v5, "MEDIA_SERVER"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getItemUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getFileSize()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v4, Lcom/samsung/android/allshare/extension/ItemExtractor$1;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 p0, 0x4

    if-eq v4, p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "create : type is "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;

    invoke-direct {p0, v3}, Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;-><init>(Landroid/os/Bundle;)V

    return-object p0

    :cond_2
    const-string v0, "BUNDLE_PARCELABLE_VIDEO_ITEM_SUBTITLE"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getSubtitle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "BUNDLE_LONG_VIDEO_ITEM_DURATION"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getDuration()J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p0, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;

    invoke-direct {p0, v3}, Lcom/samsung/android/allshare/extension/impl/SimpleVideoItem;-><init>(Landroid/os/Bundle;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;

    invoke-direct {p0, v3}, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;-><init>(Landroid/os/Bundle;)V

    return-object p0

    :cond_4
    const-string v0, "BUNDLE_LONG_AUDIO_ITEM_DURATION"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getDuration()J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;

    invoke-direct {p0, v3}, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static whitelist extract(Lcom/samsung/android/allshare/Item;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    .locals 15

    const-string v0, "ItemExtractor"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "extract : return item is null"

    invoke-static {v0, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/allshare/Item;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    const-string v2, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    const-string v8, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/allshare/extension/ItemExtractor$1;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    const/4 v13, 0x3

    if-eq v12, v13, :cond_1

    const-wide/16 v12, -0x1

    :goto_0
    move-wide v13, v12

    move-object v12, v1

    goto :goto_1

    :cond_1
    const-string v12, "BUNDLE_PARCELABLE_VIDEO_ITEM_SUBTITLE"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    const-string v13, "BUNDLE_LONG_VIDEO_ITEM_DURATION"

    invoke-virtual {p0, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_1

    :cond_2
    const-string v12, "BUNDLE_LONG_AUDIO_ITEM_DURATION"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    if-nez v6, :cond_4

    const-string p0, "extract : Title is null"

    invoke-static {v0, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    if-eqz v5, :cond_6

    const-string p0, "MEDIA_SERVER"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const-string p0, "ItemExtractor support only MEDIA_SERVER Item"

    invoke-static {v0, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    const-string p0, ",@,#,"

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    invoke-direct {p0, v1}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;-><init>(Lcom/samsung/android/allshare/extension/ItemExtractor-IA;)V

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmItemType(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmObjectId(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmProviderId(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    invoke-static {p0, v6}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmTitle(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    invoke-static {p0, v12}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmSubtitle(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)V

    invoke-static {p0, v13, v14}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmDuration(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;J)V

    invoke-static {p0, v7}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmItemUri(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)V

    invoke-static {p0, v8}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmMimeType(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v9, v10}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->-$$Nest$fputmFileSize(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;J)V

    return-object p0

    :cond_8
    :goto_3
    const-string p0, "ItemExtractor doesn\'t suppport object id or provider id that contains DELIMITER"

    invoke-static {v0, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_9
    :goto_4
    const-string p0, "extract : return something is empty"

    invoke-static {v0, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
