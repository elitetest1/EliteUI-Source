.class final Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;
.super Ljava/lang/Object;
.source "GetWalletCardsCallbackImpl.java"

# interfaces
.implements Landroid/service/quickaccesswallet/GetWalletCardsCallback;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "QAWalletCallback"


# instance fields
.field private final blacklist mCallback:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

.field private blacklist mCalled:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mRequest:Landroid/service/quickaccesswallet/GetWalletCardsRequest;


# direct methods
.method public static synthetic blacklist $r8$lambda$k0VmQimD8iTkOUO85Ffmv7r3BeU(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->lambda$onSuccess$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mVrtQFOolrGbKRHJCC-fRFhmVio(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->lambda$onFailure$2(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$s3WRyJYa6CRlKuh4dg0r_dZHIEI(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->lambda$onSuccess$0(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mRequest:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    iput-object p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCallback:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    iput-object p3, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist isValidResponse(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "QAWalletCallback"

    if-nez p1, :cond_0

    const-string p0, "Invalid response: response is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "Invalid response: walletCards is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getSelectedIndex()I

    move-result v2

    if-gez v2, :cond_2

    const-string p0, "Invalid response: selectedIndex is negative"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getSelectedIndex()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    const-string p0, "Invalid response: selectedIndex out of bounds"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object p0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mRequest:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->getMaxCards()I

    move-result p0

    if-le v2, p0, :cond_4

    const-string p0, "Invalid response: too many cards"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/quickaccesswallet/WalletCard;

    if-nez p1, :cond_6

    const-string p0, "Invalid response: card is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletCard;->getCardId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    const-string p0, "Invalid response: cardId is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletCard;->getCardImage()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-nez v3, :cond_8

    const-string p0, "Invalid response: cardImage is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    if-ne v4, v2, :cond_9

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_9

    const-string p0, "Invalid response: cardImage bitmaps must be hardware bitmaps"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletCard;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string p0, "Invalid response: contentDescription is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletCard;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p0, "Invalid response: pendingIntent is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    return v2
.end method

.method private synthetic blacklist lambda$onFailure$2(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->onFailureInternal(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$0(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->onSuccessInternal(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$1()V
    .locals 2

    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsError;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/service/quickaccesswallet/GetWalletCardsError;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->onFailureInternal(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method private blacklist onFailureInternal(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 2

    iget-boolean v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCalled:Z

    const-string v1, "QAWalletCallback"

    if-eqz v0, :cond_0

    const-string p0, "already called"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCalled:Z

    :try_start_0
    iget-object p0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCallback:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    invoke-interface {p0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error returning failure message"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist onSuccessInternal(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 2

    iget-boolean v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCalled:Z

    const-string v1, "QAWalletCallback"

    if-eqz v0, :cond_0

    const-string p0, "already called"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCalled:Z

    :try_start_0
    iget-object p0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCallback:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    invoke-interface {p0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onGetWalletCardsSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error returning wallet cards"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist removeLocationsFromResponse(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 0

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletCard;->removeCardLocations()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist onFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->isValidResponse(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.wallet_location_based_suggestions"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->removeLocationsFromResponse(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    :cond_0
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda1;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const-string p1, "QAWalletCallback"

    const-string v0, "Invalid GetWalletCards response"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda2;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
