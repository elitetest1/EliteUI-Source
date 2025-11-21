.class public final Landroid/timezone/CountryTimeZones$TimeZoneMapping;
.super Ljava/lang/Object;
.source "CountryTimeZones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/timezone/CountryTimeZones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeZoneMapping"
.end annotation


# instance fields
.field private blacklist mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    iput-object p1, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/timezone/CountryTimeZones$TimeZoneMapping;

    iget-object p0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    iget-object p1, p1, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getTimeZone()Landroid/icu/util/TimeZone;
    .locals 0

    iget-object p0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTimeZoneId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
