.class public Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;
.super Lcom/samsung/android/allshare/Item;
.source "SimpleAudioItem.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getBitrate()I
    .locals 1

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist getCaptionList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 1

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-string v0, "BUNDLE_LONG_AUDIO_ITEM_DURATION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getFileSize()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-string v0, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 1

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSubtitleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Subtitle;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .locals 1

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    :goto_0
    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist isRootFolder()Z
    .locals 1

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
