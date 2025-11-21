.class Landroid/service/ambientcontext/AmbientContextDetectionService$1;
.super Landroid/service/ambientcontext/IAmbientContextDetectionService$Stub;
.source "AmbientContextDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/ambientcontext/AmbientContextDetectionService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/ambientcontext/AmbientContextDetectionService;


# direct methods
.method constructor blacklist <init>(Landroid/service/ambientcontext/AmbientContextDetectionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/ambientcontext/AmbientContextDetectionService$1;->this$0:Landroid/service/ambientcontext/AmbientContextDetectionService;

    invoke-direct {p0}, Landroid/service/ambientcontext/IAmbientContextDetectionService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$queryServiceStatus$2(Landroid/os/RemoteCallback;Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$startDetection$0(Landroid/os/RemoteCallback;Landroid/service/ambientcontext/AmbientContextDetectionResult;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.ambientcontext.AmbientContextDetectionResultBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$startDetection$1(Landroid/os/RemoteCallback;Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/RemoteCallback;)V

    iget-object p0, p0, Landroid/service/ambientcontext/AmbientContextDetectionService$1;->this$0:Landroid/service/ambientcontext/AmbientContextDetectionService;

    invoke-virtual {p0, p1, p2, v0}, Landroid/service/ambientcontext/AmbientContextDetectionService;->onQueryServiceStatus([ILjava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/RemoteCallback;)V

    new-instance p3, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda2;

    invoke-direct {p3, p4}, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda2;-><init>(Landroid/os/RemoteCallback;)V

    iget-object p0, p0, Landroid/service/ambientcontext/AmbientContextDetectionService$1;->this$0:Landroid/service/ambientcontext/AmbientContextDetectionService;

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/service/ambientcontext/AmbientContextDetectionService;->onStartDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/service/ambientcontext/AmbientContextDetectionService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "startDetection "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist stopDetection(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/service/ambientcontext/AmbientContextDetectionService$1;->this$0:Landroid/service/ambientcontext/AmbientContextDetectionService;

    invoke-virtual {p0, p1}, Landroid/service/ambientcontext/AmbientContextDetectionService;->onStopDetection(Ljava/lang/String;)V

    return-void
.end method
