.class public final Landroid/os/CpuHeadroomParams$Builder;
.super Ljava/lang/Object;
.source "CpuHeadroomParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuHeadroomParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCalculationType:I

.field private blacklist mCalculationWindowMillis:I

.field private blacklist mTids:[I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationType:I

    iput v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mTids:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/CpuHeadroomParams;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationType:I

    iput v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mTids:[I

    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-byte v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    if-ltz v0, :cond_0

    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-byte v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    iput v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationType:I

    :cond_0
    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    if-ltz v0, :cond_1

    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    :cond_1
    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    iget-object p1, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object p1, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Landroid/os/CpuHeadroomParams$Builder;->mTids:[I

    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/os/CpuHeadroomParams;
    .locals 3

    new-instance v0, Landroid/os/CpuHeadroomParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/CpuHeadroomParams;-><init>(Landroid/os/CpuHeadroomParams-IA;)V

    iget v1, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationType:I

    if-ltz v1, :cond_0

    iget-object v1, v0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v2, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationType:I

    int-to-byte v2, v2

    iput-byte v2, v1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    :cond_0
    iget v1, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    if-ltz v1, :cond_1

    iget-object v1, v0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v2, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    iput v2, v1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    :cond_1
    iget-object v1, p0, Landroid/os/CpuHeadroomParams$Builder;->mTids:[I

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object p0, p0, Landroid/os/CpuHeadroomParams$Builder;->mTids:[I

    iput-object p0, v1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    :cond_2
    return-object v0
.end method

.method public whitelist setCalculationType(I)Landroid/os/CpuHeadroomParams$Builder;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid calculation type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationType:I

    return-object p0
.end method

.method public whitelist setCalculationWindowMillis(I)Landroid/os/CpuHeadroomParams$Builder;
    .locals 2

    if-lez p1, :cond_0

    iput p1, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid calculation window: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs whitelist setTids([I)Landroid/os/CpuHeadroomParams$Builder;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid TID: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-object p1, p0, Landroid/os/CpuHeadroomParams$Builder;->mTids:[I

    return-object p0
.end method
