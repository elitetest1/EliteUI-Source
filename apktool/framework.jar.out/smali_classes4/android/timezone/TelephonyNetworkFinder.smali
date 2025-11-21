.class public final Landroid/timezone/TelephonyNetworkFinder;
.super Ljava/lang/Object;
.source "TelephonyNetworkFinder.java"


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/TelephonyNetworkFinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    iput-object p1, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    return-void
.end method


# virtual methods
.method public blacklist findCountriesByMcc(Ljava/lang/String;)Landroid/timezone/MobileCountries;
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/Flags;->telephonyLookupMccExtension()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->findCountriesByMcc(Ljava/lang/String;)Lcom/android/i18n/timezone/MobileCountries;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Landroid/timezone/MobileCountries;

    invoke-direct {p1, p0}, Landroid/timezone/MobileCountries;-><init>(Lcom/android/i18n/timezone/MobileCountries;)V

    return-object p1

    :cond_1
    return-object v1
.end method

.method public blacklist findNetworkByMccMnc(Ljava/lang/String;Ljava/lang/String;)Landroid/timezone/TelephonyNetwork;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->findNetworkByMccMnc(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyNetwork;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Landroid/timezone/TelephonyNetwork;

    invoke-direct {p1, p0}, Landroid/timezone/TelephonyNetwork;-><init>(Lcom/android/i18n/timezone/TelephonyNetwork;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
