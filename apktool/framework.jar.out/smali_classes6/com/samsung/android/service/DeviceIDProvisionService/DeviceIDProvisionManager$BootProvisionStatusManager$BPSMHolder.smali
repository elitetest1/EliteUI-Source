.class Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager$BPSMHolder;
.super Ljava/lang/Object;
.source "DeviceIDProvisionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BPSMHolder"
.end annotation


# static fields
.field static final blacklist INSTANCE:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;-><init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager-IA;)V

    sput-object v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager$BPSMHolder;->INSTANCE:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
