.class public Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;
.super Ljava/lang/Object;
.source "SemMobileWipsScanResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioChainInfo"
.end annotation


# instance fields
.field public blacklist id:I

.field public blacklist level:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    iget v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;->id:I

    iget v3, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;->id:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;->level:I

    iget p1, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;->level:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;->level:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RadioChainInfo: id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;->level:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
