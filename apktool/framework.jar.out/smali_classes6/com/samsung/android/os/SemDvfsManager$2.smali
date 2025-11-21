.class Lcom/samsung/android/os/SemDvfsManager$2;
.super Ljava/lang/Object;
.source "SemDvfsManager.java"

# interfaces
.implements Lcom/samsung/android/os/SemDvfsManager$RequestFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/os/SemDvfsManager;->createRequester(Z)Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/os/SemDvfsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acquire(IILjava/lang/String;I[I)V
    .locals 6

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {p0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/os/CustomFrequencyManager;->acquire(IILjava/lang/String;I[I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method public blacklist checkHintExist(I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {p0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/CustomFrequencyManager;->checkHintExist(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist checkResourceExist(I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {p0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/CustomFrequencyManager;->checkResourceExist(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist checkSysfsIdExist(I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {p0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/CustomFrequencyManager;->checkSysfsIdExist(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSupportedFrequency(II)[I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {p0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/os/CustomFrequencyManager;->getSupportedFrequency(II)[I

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist release(II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {p0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/os/CustomFrequencyManager;->release(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method public blacklist sysfsRead(I)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {p0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/CustomFrequencyManager;->readSysfs(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public blacklist sysfsWrite(ILjava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {p0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/os/CustomFrequencyManager;->writeSysfs(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method
