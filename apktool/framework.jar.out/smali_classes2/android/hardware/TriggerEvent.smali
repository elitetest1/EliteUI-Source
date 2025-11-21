.class public final Landroid/hardware/TriggerEvent;
.super Ljava/lang/Object;
.source "TriggerEvent.java"


# instance fields
.field public whitelist sensor:Landroid/hardware/Sensor;

.field public whitelist timestamp:J

.field public final whitelist values:[F


# direct methods
.method constructor greylist-max-o <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [F

    iput-object p1, p0, Landroid/hardware/TriggerEvent;->values:[F

    return-void
.end method
