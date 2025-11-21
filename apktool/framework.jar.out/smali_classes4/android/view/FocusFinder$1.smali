.class Landroid/view/FocusFinder$1;
.super Ljava/lang/ThreadLocal;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/view/FocusFinder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist initialValue()Landroid/view/FocusFinder;
    .locals 1

    new-instance p0, Landroid/view/FocusFinder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/FocusFinder;-><init>(Landroid/view/FocusFinder-IA;)V

    return-object p0
.end method

.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/view/FocusFinder$1;->initialValue()Landroid/view/FocusFinder;

    move-result-object p0

    return-object p0
.end method
