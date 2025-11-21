.class public final Landroid/view/accessibility/AccessibilityWindowAttributes;
.super Ljava/lang/Object;
.source "AccessibilityWindowAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityWindowAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLocales:Landroid/os/LocaleList;

.field private final blacklist mWindowTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/accessibility/AccessibilityWindowAttributes$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowAttributes$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-class v1, Landroid/os/LocaleList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/LocaleList;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/accessibility/AccessibilityWindowAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/WindowManager$LayoutParams;Landroid/os/LocaleList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowAttributes;->populateWindowTitle(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    return-void
.end method

.method private blacklist populateWindowTitle(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/CharSequence;
    .locals 5

    iget-object p0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7cf

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7f0

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    :cond_4
    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/accessibility/AccessibilityWindowAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/view/accessibility/AccessibilityWindowAttributes;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    iget-object p1, p1, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getLocales()Landroid/os/LocaleList;
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public blacklist getWindowTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessibilityWindowAttributes{mAccessibilityWindowTitle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
