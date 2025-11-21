.class public final Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;
.super Ljava/io/IOException;
.source "VibrationXmlSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/vibrator/persistence/VibrationXmlSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializationFailedException"
.end annotation


# direct methods
.method private constructor blacklist <init>(Landroid/os/VibrationEffect;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Serialization failed for vibration effect "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/VibrationEffect;Ljava/lang/Throwable;Landroid/os/vibrator/persistence/VibrationXmlSerializer-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;-><init>(Landroid/os/VibrationEffect;Ljava/lang/Throwable;)V

    return-void
.end method
