.class public Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;
.super Ljava/lang/Object;
.source "LongitudinalReportingEncoder.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyEncoder;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist PRR1_ENCODER_ID:Ljava/lang/String; = "prr1_encoder_id"

.field private static final blacklist PRR2_ENCODER_ID:Ljava/lang/String; = "prr2_encoder_id"

.field private static final blacklist TAG:Ljava/lang/String; = "LongitudinalEncoder"


# instance fields
.field private final blacklist mConfig:Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

.field private final blacklist mFakeValue:Ljava/lang/Boolean;

.field private final blacklist mIRREncoder:Landroid/privacy/internal/rappor/RapporEncoder;

.field private final blacklist mIsSecure:Z


# direct methods
.method private constructor blacklist <init>(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;Z[B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mConfig:Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    iput-boolean p2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIsSecure:Z

    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getProbabilityP()D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getEncoderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prr1_encoder_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p2, p3, v2}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->getLongTermRandomizedResult(DZ[BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getProbabilityQ()D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getEncoderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prr2_encoder_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p2, p3, v2}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->getLongTermRandomizedResult(DZ[BLjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getIRRConfig()Landroid/privacy/internal/rappor/RapporConfig;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-static {p1, p3}, Landroid/privacy/internal/rappor/RapporEncoder;->createEncoder(Landroid/privacy/internal/rappor/RapporConfig;[B)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroid/privacy/internal/rappor/RapporEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/rappor/RapporConfig;)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIRREncoder:Landroid/privacy/internal/rappor/RapporEncoder;

    return-void
.end method

.method public static blacklist createEncoder(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;[B)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;
    .locals 2

    new-instance v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;-><init>(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;Z[B)V

    return-object v0
.end method

.method public static blacklist createInsecureEncoderForTest(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;
    .locals 3

    new-instance v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;-><init>(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;Z[B)V

    return-object v0
.end method

.method public static blacklist getLongTermRandomizedResult(DZ[BLjava/lang/String;)Z
    .locals 12

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p0, v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-gez v0, :cond_0

    mul-double/2addr p0, v1

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, p0

    mul-double p0, v3, v1

    :goto_0
    move-wide v4, p0

    const/4 p0, 0x1

    const/4 p1, 0x0

    if-gez v0, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    new-instance v1, Landroid/privacy/internal/rappor/RapporConfig;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v11}, Landroid/privacy/internal/rappor/RapporConfig;-><init>(Ljava/lang/String;IDDDII)V

    if-eqz p2, :cond_2

    invoke-static {v1, p3}, Landroid/privacy/internal/rappor/RapporEncoder;->createEncoder(Landroid/privacy/internal/rappor/RapporConfig;[B)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-static {v1}, Landroid/privacy/internal/rappor/RapporEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/rappor/RapporConfig;)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object v1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/privacy/internal/rappor/RapporEncoder;->encodeBoolean(Z)[B

    move-result-object v0

    aget-byte v0, v0, p1

    if-lez v0, :cond_3

    return p0

    :cond_3
    return p1
.end method


# virtual methods
.method public blacklist encodeBits([B)[B
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public blacklist encodeBoolean(Z)[B
    .locals 1

    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_0
    iget-object p0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIRREncoder:Landroid/privacy/internal/rappor/RapporEncoder;

    invoke-virtual {p0, p1}, Landroid/privacy/internal/rappor/RapporEncoder;->encodeBoolean(Z)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist encodeString(Ljava/lang/String;)[B
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic blacklist getConfig()Landroid/privacy/DifferentialPrivacyConfig;
    .locals 0

    invoke-virtual {p0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->getConfig()Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getConfig()Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    .locals 0

    iget-object p0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mConfig:Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    return-object p0
.end method

.method public blacklist isInsecureEncoderForTest()Z
    .locals 0

    iget-boolean p0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIsSecure:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
