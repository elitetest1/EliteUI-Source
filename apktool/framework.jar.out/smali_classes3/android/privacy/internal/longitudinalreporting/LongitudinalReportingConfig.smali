.class public Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
.super Ljava/lang/Object;
.source "LongitudinalReportingConfig.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyConfig;


# static fields
.field private static final blacklist ALGORITHM_NAME:Ljava/lang/String; = "LongitudinalReporting"


# instance fields
.field private final blacklist mEncoderId:Ljava/lang/String;

.field private final blacklist mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

.field private final blacklist mProbabilityF:D

.field private final blacklist mProbabilityP:D

.field private final blacklist mProbabilityQ:D


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;DDD)V
    .locals 14

    move-wide/from16 v5, p2

    move-wide/from16 v0, p4

    move-wide/from16 v2, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v7, 0x0

    cmpl-double v4, v5, v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-ltz v4, :cond_0

    cmpg-double v4, v5, v11

    if-gtz v4, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v9

    :goto_0
    const-string/jumbo v13, "probabilityF must be in range [0.0, 1.0]"

    invoke-static {v4, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide v5, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityF:D

    cmpl-double v4, v0, v7

    if-ltz v4, :cond_1

    cmpg-double v4, v0, v11

    if-gtz v4, :cond_1

    move v4, v10

    goto :goto_1

    :cond_1
    move v4, v9

    :goto_1
    const-string/jumbo v13, "probabilityP must be in range [0.0, 1.0]"

    invoke-static {v4, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    cmpl-double v0, v2, v7

    if-ltz v0, :cond_2

    cmpg-double v0, v2, v11

    if-gtz v0, :cond_2

    move v9, v10

    :cond_2
    const-string/jumbo v0, "probabilityQ must be in range [0.0, 1.0]"

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v10

    const-string v1, "encoderId cannot be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    new-instance v0, Landroid/privacy/internal/rappor/RapporConfig;

    sub-double v7, v11, v5

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Landroid/privacy/internal/rappor/RapporConfig;-><init>(Ljava/lang/String;IDDDII)V

    iput-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

    return-void
.end method


# virtual methods
.method public blacklist getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "LongitudinalReporting"

    return-object p0
.end method

.method blacklist getEncoderId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    return-object p0
.end method

.method blacklist getIRRConfig()Landroid/privacy/internal/rappor/RapporConfig;
    .locals 0

    iget-object p0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

    return-object p0
.end method

.method blacklist getProbabilityP()D
    .locals 2

    iget-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    return-wide v0
.end method

.method blacklist getProbabilityQ()D
    .locals 2

    iget-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    iget-wide v1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityF:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "EncoderId: %s, ProbabilityF: %.3f, ProbabilityP: %.3f, ProbabilityQ: %.3f"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
