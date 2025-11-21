.class public final Landroid/timezone/TelephonyNetwork;
.super Ljava/lang/Object;
.source "TelephonyNetwork.java"


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/TelephonyNetwork;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/i18n/timezone/TelephonyNetwork;

    iput-object p1, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

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
    check-cast p1, Landroid/timezone/TelephonyNetwork;

    iget-object p0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    iget-object p1, p1, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/TelephonyNetwork;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getCountryIsoCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/TelephonyNetwork;->getCountryIsoCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMcc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/TelephonyNetwork;->getMcc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMnc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/TelephonyNetwork;->getMnc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TelephonyNetwork{mDelegate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
