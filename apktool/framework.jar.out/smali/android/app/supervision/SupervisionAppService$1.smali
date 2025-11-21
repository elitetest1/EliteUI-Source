.class Landroid/app/supervision/SupervisionAppService$1;
.super Landroid/app/supervision/ISupervisionAppService$Stub;
.source "SupervisionAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/supervision/SupervisionAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/supervision/SupervisionAppService;


# direct methods
.method constructor blacklist <init>(Landroid/app/supervision/SupervisionAppService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/supervision/SupervisionAppService$1;->this$0:Landroid/app/supervision/SupervisionAppService;

    invoke-direct {p0}, Landroid/app/supervision/ISupervisionAppService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDisabled()V
    .locals 0

    iget-object p0, p0, Landroid/app/supervision/SupervisionAppService$1;->this$0:Landroid/app/supervision/SupervisionAppService;

    invoke-virtual {p0}, Landroid/app/supervision/SupervisionAppService;->onDisabled()V

    return-void
.end method

.method public blacklist onEnabled()V
    .locals 0

    iget-object p0, p0, Landroid/app/supervision/SupervisionAppService$1;->this$0:Landroid/app/supervision/SupervisionAppService;

    invoke-virtual {p0}, Landroid/app/supervision/SupervisionAppService;->onEnabled()V

    return-void
.end method
