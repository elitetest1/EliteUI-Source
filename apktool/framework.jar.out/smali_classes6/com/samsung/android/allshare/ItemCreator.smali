.class Lcom/samsung/android/allshare/ItemCreator;
.super Ljava/lang/Object;
.source "ItemCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "BUNDLE_STRING_ITEM_SUBTITLE_PATH"

    const-string v4, "BUNDLE_STRING_ITEM_TITLE"

    const-string v5, "BUNDLE_STRING_ITEM_MIMETYPE"

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    return-object v0

    :cond_2
    const-string v0, "BUNDLE_STRING_FILEPATH"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->setSubtitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/allshare/Item$WebContentBuilder;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setSubtitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_ITEM_ALBUM_TITLE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setAlbumTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_ITEM_ARTIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setArtist(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_ITEM_GENRE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setGenre(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    const-string v1, "BUNDLE_LONG_ITEM_DURATION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setDuration(J)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    const-string v1, "BUNDLE_DATE_ITEM_DATE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setDate(Ljava/util/Date;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    :cond_4
    const-string v1, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object p0

    goto :goto_1

    :cond_6
    :goto_0
    sget-object p0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    :goto_1
    invoke-virtual {v0, p0}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setDeliveryMode(Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    return-object v0
.end method
