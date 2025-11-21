.class Lcom/samsung/android/allshare/IconImpl;
.super Lcom/samsung/android/allshare/Icon;
.source "IconImpl.java"


# instance fields
.field private blacklist mIconBundle:Landroid/os/Bundle;


# direct methods
.method protected constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/Icon;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist getDepth()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "ICON_DEPTH"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getHeight()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "ICON_HEIGHT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getMimetype()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "ICON_MIMETYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "ICON_URI"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    :goto_0
    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "ICON_WIDTH"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
