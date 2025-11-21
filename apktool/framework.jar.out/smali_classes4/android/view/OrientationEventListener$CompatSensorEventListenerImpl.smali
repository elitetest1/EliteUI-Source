.class Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompatSensorEventListenerImpl"
.end annotation


# instance fields
.field final blacklist mSensorEventListener:Landroid/view/OrientationEventListener$SensorEventListenerImpl;

.field final synthetic blacklist this$0:Landroid/view/OrientationEventListener;


# direct methods
.method constructor blacklist <init>(Landroid/view/OrientationEventListener;Landroid/view/OrientationEventListener$SensorEventListenerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;->mSensorEventListener:Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideDisplayRotation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideDisplayRotation()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5a

    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iget-object v0, p0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v0}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmOrientation(Landroid/view/OrientationEventListener;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v0, p1}, Landroid/view/OrientationEventListener;->-$$Nest$fputmOrientation(Landroid/view/OrientationEventListener;I)V

    iget-object p0, p0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-virtual {p0, p1}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;->mSensorEventListener:Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    invoke-virtual {p0, p1}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method
