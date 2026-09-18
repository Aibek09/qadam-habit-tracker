import type { Metadata, Viewport } from "next";
import "./globals.css";
export const metadata:Metadata={title:"QADAM — Habit Tracker",description:"Daily habits, meteors and honest progress. Ежедневные привычки, метеориты и честный прогресс.",manifest:"/manifest.webmanifest",icons:{icon:"/favicon.svg",apple:"/apple-touch-icon.png"}};
export const viewport:Viewport={themeColor:"#1268e8",width:"device-width",initialScale:1,viewportFit:"cover"};
export default function RootLayout({children}:{children:React.ReactNode}){return <html lang="ru"><body>{children}</body></html>}
