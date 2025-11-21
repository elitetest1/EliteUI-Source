.class interface abstract Lcom/samsung/android/authenticator/XidlHalService;
.super Ljava/lang/Object;
.source "XidlHalService.java"


# direct methods
.method public static blacklist makeHalService()Lcom/samsung/android/authenticator/XidlHalService;
    .locals 2

    new-instance v0, Lcom/samsung/android/authenticator/AidlHalService;

    invoke-direct {v0}, Lcom/samsung/android/authenticator/AidlHalService;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/authenticator/AidlHalService;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/authenticator/HidlHalService;

    invoke-direct {v0}, Lcom/samsung/android/authenticator/HidlHalService;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist execute(Lcom/samsung/android/authenticator/TrustedAppAssetType;[B)[B
.end method

.method public abstract blacklist execute(Lcom/samsung/android/authenticator/TrustedAppType;[B)[B
.end method

.method public abstract blacklist isAvailable()Z
.end method

.method public abstract blacklist load(Lcom/samsung/android/authenticator/TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z
.end method

.method public abstract blacklist load(Lcom/samsung/android/authenticator/TrustedAppType;Landroid/os/ParcelFileDescriptor;JJ)Z
.end method

.method public abstract blacklist unload(Lcom/samsung/android/authenticator/TrustedAppAssetType;)Z
.end method

.method public abstract blacklist unload(Lcom/samsung/android/authenticator/TrustedAppType;)Z
.end method
