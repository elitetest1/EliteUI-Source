.class Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;
.super Ljava/lang/Object;
.source "SemDvfsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/os/SemDvfsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DvfsRequester"
.end annotation


# instance fields
.field blacklist func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/os/SemDvfsManager$RequestFunc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    return-void
.end method


# virtual methods
.method public blacklist acquire(IILjava/lang/String;I[I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p5}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->acquire(IILjava/lang/String;I[I)V

    :cond_0
    return-void
.end method

.method public blacklist checkHintExist(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->checkHintExist(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist checkResourceExist(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->checkResourceExist(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist checkSysfsIdExist(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->checkSysfsIdExist(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSupportedFrequency(II)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->getSupportedFrequency(II)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist release(II)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->release(II)V

    :cond_0
    return-void
.end method

.method public blacklist sysfsRead(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->sysfsRead(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public blacklist sysfsWrite(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->sysfsWrite(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
