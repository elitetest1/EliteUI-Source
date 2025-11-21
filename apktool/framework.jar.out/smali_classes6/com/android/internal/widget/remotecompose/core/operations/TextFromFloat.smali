.class public Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "TextFromFloat.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TextFromFloat"

.field public static final blacklist MAX_STRING_SIZE:I = 0xfa0

.field private static final blacklist OP_CODE:I = 0x87

.field public static final blacklist PAD_AFTER_NONE:I = 0x1

.field public static final blacklist PAD_AFTER_SPACE:I = 0x0

.field public static final blacklist PAD_AFTER_ZERO:I = 0x3

.field public static final blacklist PAD_PRE_NONE:I = 0x4

.field public static final blacklist PAD_PRE_SPACE:I = 0x0

.field public static final blacklist PAD_PRE_ZERO:I = 0xc


# instance fields
.field blacklist mAfter:C

.field public blacklist mDigitsAfter:S

.field public blacklist mDigitsBefore:S

.field public blacklist mFlags:I

.field public blacklist mOutValue:F

.field blacklist mPre:C

.field public blacklist mTextId:I

.field public blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(IFSSI)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    const/16 v0, 0x20

    iput-char v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    iput-char v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    iput-short p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mOutValue:F

    and-int/lit8 p1, p5, 0x3

    const/16 p2, 0x30

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    iput-char p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    goto :goto_0

    :cond_1
    iput-char p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    goto :goto_0

    :cond_2
    iput-char v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    :goto_0
    const/16 p1, 0xc

    and-int/lit8 p4, p5, 0xc

    if-eqz p4, :cond_5

    const/4 p5, 0x4

    if-eq p4, p5, :cond_4

    if-eq p4, p1, :cond_3

    return-void

    :cond_3
    iput-char p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    return-void

    :cond_4
    iput-char p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    return-void

    :cond_5
    iput-char v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFSSI)V
    .locals 1

    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    shl-int/lit8 p1, p3, 0x10

    or-int/2addr p1, p4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 4

    const/16 v0, 0x87

    const-string v1, "TextFromFloat"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Draw text along path object"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "textId"

    const-string v1, "id of the text generated"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "value"

    const-string v1, "Value to add"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "prePoint"

    const-string v1, "digits before the decimal point"

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "pstPoint"

    const-string v1, "digit after the decimal point"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "flags"

    const-string/jumbo v1, "options on padding"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x87

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "TextFromFloat"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    const v3, 0xffff

    and-int v4, v0, v3

    int-to-short v4, v4

    shr-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v3

    int-to-short v3, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;-><init>(IFSSI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mOutValue:F

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    iget-char v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    iget-char v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringUtils;->floatToString(FIICC)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadText(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3

    const-string v0, "TextFromFloat"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mOutValue:F

    const-string/jumbo v2, "value"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const-string v1, "digitsBefore"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Short;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const-string v1, "digitsAfter"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Short;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "flags"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextFromFloat["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mOutValue:F

    :cond_0
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 6

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    iget-short v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    iget-short v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFSSI)V

    return-void
.end method
