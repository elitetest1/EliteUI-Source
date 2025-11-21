.class public final Landroid/os/GpuHeadroomParams;
.super Ljava/lang/Object;
.source "GpuHeadroomParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/GpuHeadroomParams$Builder;,
        Landroid/os/GpuHeadroomParams$GpuHeadroomCalculationType;
    }
.end annotation


# static fields
.field public static final whitelist GPU_HEADROOM_CALCULATION_TYPE_AVERAGE:I = 0x1

.field public static final whitelist GPU_HEADROOM_CALCULATION_TYPE_MIN:I = 0x0

.field public static final whitelist GPU_HEADROOM_CALCULATION_WINDOW_MILLIS_MAX:I = 0x2710

.field public static final whitelist GPU_HEADROOM_CALCULATION_WINDOW_MILLIS_MIN:I = 0x32


# instance fields
.field public final blacklist mInternal:Landroid/os/GpuHeadroomParamsInternal;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/GpuHeadroomParamsInternal;

    invoke-direct {v0}, Landroid/os/GpuHeadroomParamsInternal;-><init>()V

    iput-object v0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/GpuHeadroomParams-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/GpuHeadroomParams;-><init>()V

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
    check-cast p1, Landroid/os/GpuHeadroomParams;

    iget-object p0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget-object p1, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    invoke-virtual {p0, p1}, Landroid/os/GpuHeadroomParamsInternal;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getCalculationType()I
    .locals 2

    iget-object v0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget-byte v0, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget-byte p0, p0, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    return p0
.end method

.method public whitelist getCalculationWindowMillis()I
    .locals 0

    iget-object p0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget p0, p0, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    invoke-virtual {p0}, Landroid/os/GpuHeadroomParamsInternal;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GpuHeadroomParams{calculationType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget-byte v1, v1, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calculationWindowMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget p0, p0, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
