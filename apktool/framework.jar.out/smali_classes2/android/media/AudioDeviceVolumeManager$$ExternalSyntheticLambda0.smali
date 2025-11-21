.class public final synthetic Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/AudioDeviceAttributes;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/AudioDeviceAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioDeviceAttributes;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioDeviceAttributes;

    check-cast p1, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    invoke-static {p0, p1}, Landroid/media/AudioDeviceVolumeManager;->lambda$baseSetDeviceAbsoluteMultiVolumeBehavior$0(Landroid/media/AudioDeviceAttributes;Landroid/media/AudioDeviceVolumeManager$ListenerInfo;)Z

    move-result p0

    return p0
.end method
