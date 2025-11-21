.class public Lcom/samsung/android/allshare/extension/SECVideoCaption;
.super Ljava/lang/Object;
.source "SECVideoCaption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;
    }
.end annotation


# static fields
.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "SECVideoCaption"

.field private static blacklist mSubTitleURL:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputmSubTitleURL(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/allshare/extension/SECVideoCaption;->mSubTitleURL:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getSubTitleURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;->start()V

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SECVideoCaption"

    const-string v0, "getSubTitleURL : InterruptedException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    sget-object p0, Lcom/samsung/android/allshare/extension/SECVideoCaption;->mSubTitleURL:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
