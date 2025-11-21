.class public abstract Landroid/os/CancellationSignalBeamer$Sender;
.super Ljava/lang/Object;
.source "CancellationSignalBeamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CancellationSignalBeamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Sender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CancellationSignalBeamer$Sender$Token;,
        Landroid/os/CancellationSignalBeamer$Sender$MustClose;,
        Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    }
.end annotation


# static fields
.field private static final blacklist sScope:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/Pair<",
            "Landroid/os/CancellationSignalBeamer$Sender;",
            "Ljava/util/ArrayList<",
            "Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/CancellationSignalBeamer$Sender;->sScope:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist beamFromScope(Landroid/os/CancellationSignal;)Landroid/os/IBinder;
    .locals 2

    sget-object v0, Landroid/os/CancellationSignalBeamer$Sender;->sScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/CancellationSignalBeamer$Sender;

    invoke-virtual {v1, p0}, Landroid/os/CancellationSignalBeamer$Sender;->beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;

    move-result-object p0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic blacklist lambda$beamScopeIfNeeded$0()V
    .locals 3

    sget-object v0, Landroid/os/CancellationSignalBeamer$Sender;->sScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;

    invoke-interface {v2}, Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;->close()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/os/CancellationSignalBeamer$Sender$Token;

    invoke-direct {v1, p0, p1, v0}, Landroid/os/CancellationSignalBeamer$Sender$Token;-><init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;Landroid/os/CancellationSignalBeamer-IA;)V

    return-object v1
.end method

.method public blacklist beamScopeIfNeeded(Landroid/view/inputmethod/HandwritingGesture;)Landroid/os/CancellationSignalBeamer$Sender$MustClose;
    .locals 1

    instance-of p1, p1, Landroid/view/inputmethod/CancellableHandwritingGesture;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p1, Landroid/os/CancellationSignalBeamer$Sender;->sScope:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    new-instance p0, Landroid/os/CancellationSignalBeamer$Sender$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Landroid/os/CancellationSignalBeamer$Sender$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public abstract blacklist onCancel(Landroid/os/IBinder;)V
.end method

.method public abstract blacklist onForget(Landroid/os/IBinder;)V
.end method
