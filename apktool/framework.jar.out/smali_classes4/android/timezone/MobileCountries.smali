.class public final Landroid/timezone/MobileCountries;
.super Ljava/lang/Object;
.source "MobileCountries.java"


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/MobileCountries;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/MobileCountries;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/i18n/timezone/MobileCountries;

    iput-object p1, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    return-void
.end method


# virtual methods
.method public blacklist getCountryIsoCodes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/MobileCountries;->getCountryIsoCodes()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDefaultCountryIsoCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/MobileCountries;->getDefaultCountryIsoCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMcc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/MobileCountries;->getMcc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileCountries{mDelegate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
