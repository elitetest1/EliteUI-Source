.class Landroid/app/AppOpsManager$5;
.super Lcom/android/internal/app/IAppOpsStartedCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/app/AppOpsManager$OnOpStartedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpStartedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Landroid/app/AppOpsManager$5;->val$callback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist opStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 0

    iget-object p0, p0, Landroid/app/AppOpsManager$5;->val$callback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-interface/range {p0 .. p10}, Landroid/app/AppOpsManager$OnOpStartedListener;->onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    return-void
.end method
