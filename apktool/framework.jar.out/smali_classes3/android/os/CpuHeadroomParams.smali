.class public final Landroid/os/CpuHeadroomParams;
.super Ljava/lang/Object;
.source "CpuHeadroomParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CpuHeadroomParams$Builder;,
        Landroid/os/CpuHeadroomParams$CpuHeadroomCalculationType;
    }
.end annotation


# static fields
.field public static final whitelist CPU_HEADROOM_CALCULATION_TYPE_AVERAGE:I = 0x1

.field public static final whitelist CPU_HEADROOM_CALCULATION_TYPE_MIN:I


# instance fields
.field public final blacklist mInternal:Landroid/os/CpuHeadroomParamsInternal;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/CpuHeadroomParamsInternal;

    invoke-direct {v0}, Landroid/os/CpuHeadroomParamsInternal;-><init>()V

    iput-object v0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/CpuHeadroomParams-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/CpuHeadroomParams;-><init>()V

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
    check-cast p1, Landroid/os/CpuHeadroomParams;

    iget-object p0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object p1, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    invoke-virtual {p0, p1}, Landroid/os/CpuHeadroomParamsInternal;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getCalculationType()I
    .locals 2

    iget-object v0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-byte v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-byte p0, p0, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    return p0
.end method

.method public whitelist getCalculationWindowMillis()J
    .locals 2

    iget-object p0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget p0, p0, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public whitelist getTids()[I
    .locals 1

    iget-object v0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    iget-object p0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object p0, p0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length p0, p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    invoke-virtual {p0}, Landroid/os/CpuHeadroomParamsInternal;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist toBuilder()Landroid/os/CpuHeadroomParams$Builder;
    .locals 1

    new-instance v0, Landroid/os/CpuHeadroomParams$Builder;

    invoke-direct {v0, p0}, Landroid/os/CpuHeadroomParams$Builder;-><init>(Landroid/os/CpuHeadroomParams;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuHeadroomParams{calculationType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-byte v1, v1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calculationWindowMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v1, v1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object p0, p0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
