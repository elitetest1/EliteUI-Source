.class public final synthetic Landroid/security/intrusiondetection/IntrusionDetectionManager$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$2$$ExternalSyntheticLambda1;->f$0:Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 0

    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$2$$ExternalSyntheticLambda1;->f$0:Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;

    invoke-interface {p0}, Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;->onSuccess()V

    return-void
.end method
