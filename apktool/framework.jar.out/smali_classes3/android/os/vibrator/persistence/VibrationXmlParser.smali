.class public final Landroid/os/vibrator/persistence/VibrationXmlParser;
.super Ljava/lang/Object;
.source "VibrationXmlParser.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;,
        Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;,
        Landroid/os/vibrator/persistence/VibrationXmlParser$Flags;
    }
.end annotation


# static fields
.field public static final blacklist APPLICATION_VIBRATION_XML_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.haptics.vibration+xml"

.field public static final blacklist FLAG_ALLOW_HIDDEN_APIS:I = 0x1


# direct methods
.method public static synthetic blacklist $r8$lambda$-R-0-KdYRLwY70_HKmLQlQShGJ8(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 0

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseElementInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$CboBSd8Io_UpVlYlm872u5okLwk(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;
    .locals 0

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isSupportedMimeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/vnd.android.haptics.vibration+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static whitelist parse(Ljava/io/InputStream;)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseDocument(Ljava/io/Reader;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocumentInternal(Ljava/io/Reader;ILandroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/persistence/ParsedVibration;

    return-object p0
.end method

.method private static blacklist parseDocumentInternal(Ljava/io/Reader;ILandroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "I",
            "Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {v1, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentStart(Lcom/android/modules/utils/TypedXmlPullParser;)V

    invoke-interface {p2, v1, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;->parse(Lcom/android/modules/utils/TypedXmlPullParser;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;

    invoke-direct {p1, p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Lcom/android/internal/vibrator/persistence/XmlParserException;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;

    const-string p2, "Error initializing XMLPullParser"

    invoke-direct {p1, p2, p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V

    throw p1
.end method

.method public static blacklist parseElement(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseElementInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Lcom/android/internal/vibrator/persistence/XmlParserException;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V

    throw p1
.end method

.method private static blacklist parseElementInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v1, "vibration-effect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "vibration-select"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationSelectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected tag "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when parsing a vibration"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Ljava/lang/String;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V

    throw p0

    :cond_1
    new-instance v0, Landroid/os/vibrator/persistence/ParsedVibration;

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/vibrator/persistence/ParsedVibration;-><init>(Landroid/os/VibrationEffect;)V

    return-object v0
.end method

.method public static whitelist parseVibrationEffect(Ljava/io/InputStream;)Landroid/os/VibrationEffect;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffect(Ljava/io/Reader;)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseVibrationEffect(Ljava/io/Reader;)Landroid/os/VibrationEffect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffect(Ljava/io/Reader;I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseVibrationEffect(Ljava/io/Reader;I)Landroid/os/VibrationEffect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocumentInternal(Ljava/io/Reader;ILandroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method private static blacklist parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlParser;->parseTag(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;->deserialize()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method private static blacklist parseVibrationSelectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    const-string/jumbo v0, "vibration-select"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/vibrator/persistence/ParsedVibration;

    invoke-direct {p0, v1}, Landroid/os/vibrator/persistence/ParsedVibration;-><init>(Ljava/util/List;)V

    return-object p0
.end method
