.class public final Landroid/timezone/TzDataSetVersion;
.super Ljava/lang/Object;
.source "TzDataSetVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/timezone/TzDataSetVersion$TzDataSetException;
    }
.end annotation


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;


# direct methods
.method private constructor blacklist <init>(Lcom/android/i18n/timezone/TzDataSetVersion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/i18n/timezone/TzDataSetVersion;

    iput-object p1, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    return-void
.end method

.method public static blacklist currentFormatMajorVersion()I
    .locals 1

    invoke-static {}, Lcom/android/i18n/timezone/TzDataSetVersion;->currentFormatMajorVersion()I

    move-result v0

    return v0
.end method

.method public static blacklist currentFormatMinorVersion()I
    .locals 1

    invoke-static {}, Lcom/android/i18n/timezone/TzDataSetVersion;->currentFormatMinorVersion()I

    move-result v0

    return v0
.end method

.method public static blacklist isCompatibleWithThisDevice(Landroid/timezone/TzDataSetVersion;)Z
    .locals 0

    iget-object p0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-static {p0}, Lcom/android/i18n/timezone/TzDataSetVersion;->isCompatibleWithThisDevice(Lcom/android/i18n/timezone/TzDataSetVersion;)Z

    move-result p0

    return p0
.end method

.method public static blacklist read()Landroid/timezone/TzDataSetVersion;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/timezone/TzDataSetVersion$TzDataSetException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/timezone/TzDataSetVersion;

    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->readTimeZoneModuleVersion()Lcom/android/i18n/timezone/TzDataSetVersion;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/timezone/TzDataSetVersion;-><init>(Lcom/android/i18n/timezone/TzDataSetVersion;)V
    :try_end_0
    .catch Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/timezone/TzDataSetVersion$TzDataSetException;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/timezone/TzDataSetVersion$TzDataSetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    check-cast p1, Landroid/timezone/TzDataSetVersion;

    iget-object p0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    iget-object p1, p1, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/TzDataSetVersion;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getFormatMajorVersion()I
    .locals 0

    iget-object p0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/TzDataSetVersion;->getFormatMajorVersion()I

    move-result p0

    return p0
.end method

.method public blacklist getFormatMinorVersion()I
    .locals 0

    iget-object p0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/TzDataSetVersion;->getFormatMinorVersion()I

    move-result p0

    return p0
.end method

.method public blacklist getRevision()I
    .locals 0

    iget-object p0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/TzDataSetVersion;->getRevision()I

    move-result p0

    return p0
.end method

.method public blacklist getRulesVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/TzDataSetVersion;->getRulesVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/TzDataSetVersion;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
