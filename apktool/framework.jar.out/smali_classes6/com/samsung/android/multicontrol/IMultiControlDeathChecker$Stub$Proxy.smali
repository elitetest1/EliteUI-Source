.class Lcom/samsung/android/multicontrol/IMultiControlDeathChecker$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMultiControlDeathChecker.java"

# interfaces
.implements Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multicontrol/IMultiControlDeathChecker$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.multicontrol.IMultiControlDeathChecker"

    return-object p0
.end method
