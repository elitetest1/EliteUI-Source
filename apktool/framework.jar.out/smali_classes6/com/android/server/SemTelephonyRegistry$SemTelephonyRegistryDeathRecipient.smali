.class Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;
.super Ljava/lang/Object;
.source "SemTelephonyRegistry.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SemTelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemTelephonyRegistryDeathRecipient"
.end annotation


# instance fields
.field private final blacklist binder:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Lcom/android/server/SemTelephonyRegistry;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/SemTelephonyRegistry;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;->this$0:Lcom/android/server/SemTelephonyRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;->this$0:Lcom/android/server/SemTelephonyRegistry;

    iget-object p0, p0, Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;->binder:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/server/SemTelephonyRegistry;->-$$Nest$mremove(Lcom/android/server/SemTelephonyRegistry;Landroid/os/IBinder;)V

    return-void
.end method
