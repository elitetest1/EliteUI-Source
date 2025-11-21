.class final Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;
.super Ljava/lang/Object;
.source "CameraExtensionService.java"

# interfaces
.implements Landroid/hardware/camera2/extension/CameraUsageTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/CameraExtensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraTracker"
.end annotation


# instance fields
.field private final blacklist mAppOpsService:Landroid/app/AppOpsManager;

.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUid:I

.field final synthetic blacklist this$0:Landroid/hardware/camera2/extension/CameraExtensionService;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/extension/CameraExtensionService;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/camera2/extension/CameraExtensionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAppOpsService:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/extension/CameraExtensionService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/extension/CameraExtensionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/extension/CameraExtensionService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mUid:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/extension/CameraExtensionService;Landroid/hardware/camera2/extension/CameraExtensionService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;-><init>(Landroid/hardware/camera2/extension/CameraExtensionService;)V

    return-void
.end method


# virtual methods
.method public blacklist finishCameraOperation()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAppOpsService:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mUid:I

    iget-object v2, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAttributionTag:Ljava/lang/String;

    const-string v3, "android:camera"

    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist startCameraOperation()V
    .locals 6

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAppOpsService:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_0

    iget v2, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mUid:I

    iget-object v3, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAttributionTag:Ljava/lang/String;

    const-string v5, "Camera extensions"

    const-string v1, "android:camera"

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
