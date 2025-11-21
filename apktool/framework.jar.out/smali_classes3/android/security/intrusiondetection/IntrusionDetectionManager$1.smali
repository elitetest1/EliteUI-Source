.class Landroid/security/intrusiondetection/IntrusionDetectionManager$1;
.super Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback$Stub;
.source "IntrusionDetectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/intrusiondetection/IntrusionDetectionManager;->addStateCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Ljava/util/function/Consumer;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/security/intrusiondetection/IntrusionDetectionManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onStateChange$0(Ljava/util/function/Consumer;I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onStateChange(I)V
    .locals 2

    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$1;->val$callback:Ljava/util/function/Consumer;

    new-instance v1, Landroid/security/intrusiondetection/IntrusionDetectionManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/security/intrusiondetection/IntrusionDetectionManager$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
