.class public final synthetic Lcom/samsung/android/motionphoto/core/MPSurfaceReader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;

.field public final synthetic blacklist f$1:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;

    iput-object p2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    invoke-static {v0, p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->lambda$postEventFromNative$0(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)V

    return-void
.end method
