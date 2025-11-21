.class public Lcom/samsung/android/wifi/SemOpBrandingLoader;
.super Ljava/lang/Object;
.source "SemOpBrandingLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    }
.end annotation


# static fields
.field private static blacklist sInstance:Lcom/samsung/android/wifi/SemOpBrandingLoader;


# instance fields
.field private blacklist mVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getSalesCode()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;
    .locals 2

    const-class v0, Lcom/samsung/android/wifi/SemOpBrandingLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/wifi/SemOpBrandingLoader;->sInstance:Lcom/samsung/android/wifi/SemOpBrandingLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/wifi/SemOpBrandingLoader;

    invoke-direct {v1}, Lcom/samsung/android/wifi/SemOpBrandingLoader;-><init>()V

    sput-object v1, Lcom/samsung/android/wifi/SemOpBrandingLoader;->sInstance:Lcom/samsung/android/wifi/SemOpBrandingLoader;

    :cond_0
    sget-object v1, Lcom/samsung/android/wifi/SemOpBrandingLoader;->sInstance:Lcom/samsung/android/wifi/SemOpBrandingLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist getSalesCode()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .locals 1

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getVendor(Ljava/lang/String;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getVendor(Ljava/lang/String;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->valueOf(Ljava/lang/String;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    sget-object p0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->Unknown:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-object p0
.end method


# virtual methods
.method public blacklist getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-object p0
.end method
