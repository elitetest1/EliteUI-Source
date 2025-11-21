.class public final synthetic Landroid/app/ActivityThread$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Landroid/app/ActivityThread;

    move-object p1, p2

    check-cast p1, Landroid/os/IBinder;

    move-object p2, p3

    check-cast p2, Lcom/android/internal/app/IVoiceInteractor;

    move-object p3, p4

    check-cast p3, Landroid/os/CancellationSignal;

    move-object p4, p5

    check-cast p4, Landroid/os/RemoteCallback;

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-static/range {p0 .. p5}, Landroid/app/ActivityThread;->$r8$lambda$JtANQHbm8_woSrSSrItwPFzx9Rc(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method
