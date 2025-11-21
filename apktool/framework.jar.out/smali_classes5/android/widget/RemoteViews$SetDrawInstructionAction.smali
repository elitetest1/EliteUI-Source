.class Landroid/widget/RemoteViews$SetDrawInstructionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDrawInstructionAction"
.end annotation


# instance fields
.field private final blacklist mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$pOE8o2FvmfqExVPt5TJgnSJQGNA(Landroid/widget/RemoteViews$SetDrawInstructionAction;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->lambda$apply$1(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/widget/RemoteViews$DrawInstructions;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews$DrawInstructions;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$DrawInstructions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    iput-object p2, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    return-void
.end method

.method static synthetic blacklist lambda$apply$0(ILjava/lang/String;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/RemoteViews$Action;)V
    .locals 1

    iget v0, p4, Landroid/widget/RemoteViews$Action;->mViewId:I

    if-ne p0, v0, :cond_1

    instance-of p0, p4, Landroid/widget/RemoteViews$SetOnClickResponse;

    if-eqz p0, :cond_1

    check-cast p4, Landroid/widget/RemoteViews$SetOnClickResponse;

    iget-object p0, p4, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {p0}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;

    move-result-object p4

    if-nez p4, :cond_0

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, p4}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fputmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;Landroid/content/Intent;)V

    :cond_0
    invoke-static {p0}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;

    move-result-object p4

    const-string/jumbo v0, "remotecompose_metadata"

    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {p0, p2, p1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    :cond_1
    return-void
.end method

.method private synthetic blacklist lambda$apply$1(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {p0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    if-eqz p2, :cond_1

    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iget-object p2, p2, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-direct {p2, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    new-instance p2, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1, p3}, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$SetDrawInstructionAction;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addIdActionListener(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteViews"

    const-string p2, "Failed to render draw instructions"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .locals 0

    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result p0

    return p0
.end method

.method public blacklist getActionTag()I
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews$DrawInstructions;->-$$Nest$smwriteToParcel(Landroid/widget/RemoteViews$DrawInstructions;Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 3

    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-wide p2, 0x10b00000016L

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    iget-object p0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-wide v1, 0x20c00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
