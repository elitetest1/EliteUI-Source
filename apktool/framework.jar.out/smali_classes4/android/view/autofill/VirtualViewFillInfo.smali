.class public final Landroid/view/autofill/VirtualViewFillInfo;
.super Ljava/lang/Object;
.source "VirtualViewFillInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/VirtualViewFillInfo$Builder;
    }
.end annotation


# instance fields
.field private blacklist mAutofillHints:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultAutofillHints()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/view/autofill/VirtualViewFillInfo;->defaultAutofillHints()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method constructor blacklist <init>([Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/VirtualViewFillInfo;->mAutofillHints:[Ljava/lang/String;

    const-class p0, Landroid/annotation/SuppressLint;

    const-string/jumbo v0, "value"

    const-string v1, "NullableCollection"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultAutofillHints()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist getAutofillHints()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/VirtualViewFillInfo;->mAutofillHints:[Ljava/lang/String;

    return-object p0
.end method
