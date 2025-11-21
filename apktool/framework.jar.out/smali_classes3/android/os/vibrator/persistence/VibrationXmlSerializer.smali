.class public final Landroid/os/vibrator/persistence/VibrationXmlSerializer;
.super Ljava/lang/Object;
.source "VibrationXmlSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;,
        Landroid/os/vibrator/persistence/VibrationXmlSerializer$Flags;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_ALLOW_HIDDEN_APIS:I = 0x1

.field public static final blacklist FLAG_PRETTY_PRINT:I = 0x2

.field private static final blacklist XML_ENCODING:Ljava/lang/String;

.field private static final blacklist XML_FEATURE_INDENT_OUTPUT:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->XML_ENCODING:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist serialize(Landroid/os/VibrationEffect;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->serialize(Landroid/os/VibrationEffect;Ljava/io/Writer;I)V

    return-void
.end method

.method public static blacklist serialize(Landroid/os/VibrationEffect;Ljava/io/Writer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2}, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->toSerializedVibration(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object p0

    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    and-int/lit8 p2, p2, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/Writer;)V

    sget-object p1, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->XML_ENCODING:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;->write(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method private static blacklist toSerializedVibration(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect;",
            "I)",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "+",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;
        }
    .end annotation

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serialize(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serialize(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object p1

    :goto_1
    invoke-static {p1, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializedVibration(Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;Landroid/os/VibrationEffect;)V
    :try_end_0
    .catch Lcom/android/internal/vibrator/persistence/XmlSerializerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;-><init>(Landroid/os/VibrationEffect;Ljava/lang/Throwable;Landroid/os/vibrator/persistence/VibrationXmlSerializer-IA;)V

    throw v0
.end method
