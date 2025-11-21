.class public final Landroid/timezone/TimeZoneFinder;
.super Ljava/lang/Object;
.source "TimeZoneFinder.java"


# static fields
.field private static blacklist sInstance:Landroid/timezone/TimeZoneFinder;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/TimeZoneFinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/timezone/TimeZoneFinder;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/i18n/timezone/TimeZoneFinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/i18n/timezone/TimeZoneFinder;

    iput-object p1, p0, Landroid/timezone/TimeZoneFinder;->mDelegate:Lcom/android/i18n/timezone/TimeZoneFinder;

    return-void
.end method

.method public static blacklist getInstance()Landroid/timezone/TimeZoneFinder;
    .locals 3

    sget-object v0, Landroid/timezone/TimeZoneFinder;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/timezone/TimeZoneFinder;->sInstance:Landroid/timezone/TimeZoneFinder;

    if-nez v1, :cond_0

    new-instance v1, Landroid/timezone/TimeZoneFinder;

    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/timezone/TimeZoneFinder;-><init>(Lcom/android/i18n/timezone/TimeZoneFinder;)V

    sput-object v1, Landroid/timezone/TimeZoneFinder;->sInstance:Landroid/timezone/TimeZoneFinder;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/timezone/TimeZoneFinder;->sInstance:Landroid/timezone/TimeZoneFinder;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist getIanaVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/timezone/TimeZoneFinder;->mDelegate:Lcom/android/i18n/timezone/TimeZoneFinder;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/TimeZoneFinder;->getIanaVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist lookupCountryTimeZones(Ljava/lang/String;)Landroid/timezone/CountryTimeZones;
    .locals 0

    iget-object p0, p0, Landroid/timezone/TimeZoneFinder;->mDelegate:Lcom/android/i18n/timezone/TimeZoneFinder;

    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Landroid/timezone/CountryTimeZones;

    invoke-direct {p1, p0}, Landroid/timezone/CountryTimeZones;-><init>(Lcom/android/i18n/timezone/CountryTimeZones;)V

    return-object p1
.end method
