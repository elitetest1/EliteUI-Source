.class final Lcom/samsung/android/allshare/SubtitleImpl;
.super Lcom/samsung/android/allshare/Subtitle;
.source "SubtitleImpl.java"


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method protected constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/Subtitle;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist getType()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "SUBTITLE_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "SUBTITLE_URI"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    :goto_0
    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method
