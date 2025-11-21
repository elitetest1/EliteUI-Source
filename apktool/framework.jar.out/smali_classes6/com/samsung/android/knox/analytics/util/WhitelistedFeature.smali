.class public Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;
.super Ljava/lang/Object;
.source "WhitelistedFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    }
.end annotation


# instance fields
.field private blacklist mEnableApi:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

.field private blacklist mFeature:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mFeature:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->fromEnableType(Ljava/lang/Integer;)Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mEnableApi:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-void
.end method

.method private static blacklist fromEnableType(Ljava/lang/Integer;)Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->GET:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object p0
.end method


# virtual methods
.method public blacklist getEnableApi()Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mEnableApi:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object p0
.end method

.method public blacklist hasFeatureName(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mFeature:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
