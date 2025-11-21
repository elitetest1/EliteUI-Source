.class public Landroid/inputmethodservice/Keyboard$Key;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final greylist-max-o KEY_STATE_NORMAL:[I

.field private static final greylist-max-o KEY_STATE_NORMAL_OFF:[I

.field private static final greylist-max-o KEY_STATE_NORMAL_ON:[I

.field private static final greylist-max-o KEY_STATE_PRESSED:[I

.field private static final greylist-max-o KEY_STATE_PRESSED_OFF:[I

.field private static final greylist-max-o KEY_STATE_PRESSED_ON:[I


# instance fields
.field public whitelist codes:[I

.field public whitelist edgeFlags:I

.field public whitelist gap:I

.field public whitelist height:I

.field public whitelist icon:Landroid/graphics/drawable/Drawable;

.field public whitelist iconPreview:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o keyboard:Landroid/inputmethodservice/Keyboard;

.field public whitelist label:Ljava/lang/CharSequence;

.field public whitelist modifier:Z

.field public whitelist on:Z

.field public whitelist popupCharacters:Ljava/lang/CharSequence;

.field public whitelist popupResId:I

.field public whitelist pressed:Z

.field public whitelist repeatable:Z

.field public whitelist sticky:Z

.field public whitelist text:Ljava/lang/CharSequence;

.field public whitelist width:I

.field public whitelist x:I

.field public whitelist y:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const v0, 0x101009f

    const v1, 0x10100a0

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    const v2, 0x10100a7

    filled-new-array {v2, v0, v1}, [I

    move-result-object v1

    sput-object v1, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL:[I

    filled-new-array {v2}, [I

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 4

    invoke-direct {p0, p2}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    sget-object p4, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    invoke-static {p4}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayWidth(Landroid/inputmethodservice/Keyboard;)I

    move-result p4

    iget v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    const/4 v1, 0x0

    invoke-static {p3, v1, p4, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    invoke-static {p4}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayHeight(Landroid/inputmethodservice/Keyboard;)I

    move-result p4

    iget v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    const/4 v2, 0x1

    invoke-static {p3, v2, p4, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    invoke-static {p4}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayWidth(Landroid/inputmethodservice/Keyboard;)I

    move-result p4

    iget v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    const/4 v3, 0x2

    invoke-static {p3, v3, p4, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    sget-object p4, Lcom/android/internal/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget p3, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget p4, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr p3, p4

    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget p4, p3, Landroid/util/TypedValue;->type:I

    const/16 p5, 0x10

    const/4 v0, 0x3

    if-eq p4, p5, :cond_1

    iget p4, p3, Landroid/util/TypedValue;->type:I

    const/16 p5, 0x11

    if-ne p4, p5, :cond_0

    goto :goto_0

    :cond_0
    iget p4, p3, Landroid/util/TypedValue;->type:I

    if-ne p4, v0, :cond_2

    iget-object p3, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/inputmethodservice/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object p3

    iput-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    goto :goto_1

    :cond_1
    :goto_0
    iget p3, p3, Landroid/util/TypedValue;->data:I

    filled-new-array {p3}, [I

    move-result-object p3

    iput-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    :cond_2
    :goto_1
    const/4 p3, 0x7

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    iget-object p5, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    invoke-virtual {p3, v1, v1, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const/4 p3, 0x6

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    const/4 p3, 0x4

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/inputmethodservice/Keyboard$Key;->modifier:Z

    const/4 p3, 0x5

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    iget p2, p2, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    or-int/2addr p2, p3

    iput p2, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    invoke-virtual {p2, v1, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    iget-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    if-nez p2, :cond_5

    iget-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/inputmethodservice/Keyboard$Row;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/inputmethodservice/Keyboard$Row;->-$$Nest$fgetparent(Landroid/inputmethodservice/Keyboard$Row;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    iget p1, p1, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    iput p1, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    return-void
.end method


# virtual methods
.method public whitelist getCurrentDrawableState()[I
    .locals 2

    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL:[I

    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    return-object p0

    :cond_0
    sget-object p0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    return-object p0

    :cond_1
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_3

    iget-boolean p0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz p0, :cond_2

    sget-object p0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    return-object p0

    :cond_2
    sget-object p0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    return-object p0

    :cond_3
    iget-boolean p0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz p0, :cond_4

    sget-object p0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED:[I

    return-object p0

    :cond_4
    return-object v0
.end method

.method public whitelist isInside(II)Z
    .locals 7

    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    if-ge p1, v6, :cond_4

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v1, v6

    if-gt p1, v1, :cond_7

    :cond_4
    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v1, v6

    if-lt p1, v1, :cond_5

    if-eqz v4, :cond_7

    if-lt p1, v6, :cond_7

    :cond_5
    iget p1, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    if-ge p2, p1, :cond_6

    if-eqz v5, :cond_7

    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v1, p1

    if-gt p2, v1, :cond_7

    :cond_6
    iget p0, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr p0, p1

    if-lt p2, p0, :cond_8

    if-eqz v0, :cond_7

    if-lt p2, p1, :cond_7

    goto :goto_4

    :cond_7
    return v2

    :cond_8
    :goto_4
    return v3
.end method

.method public whitelist onPressed()V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    return-void
.end method

.method public whitelist onReleased(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    :cond_0
    return-void
.end method

.method greylist-max-o parseCSV(Ljava/lang/String;)[I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const-string v0, ","

    const/4 v1, 0x0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    move v3, p0

    move v2, v1

    :goto_0
    add-int/2addr v2, p0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :cond_1
    new-array p0, v3, [I

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, p0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing keycodes "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Keyboard"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public whitelist squaredDistanceFrom(II)I
    .locals 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget p1, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget p0, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    sub-int/2addr p1, p2

    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr v0, p1

    return v0
.end method
