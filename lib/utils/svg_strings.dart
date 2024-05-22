String getWalletSvg({
  String frontGradientBegin = '#23C793',
  String frontGradientEnd = '#14B884',
  String backColor = '#12A577',
}) {
  final walletSvg = '''
 <svg width="261" height="180" viewBox="0 0 261 180" fill="none" xmlns="http://www.w3.org/2000/svg">
<g filter="url(#filter0_d_782_11391)">
<path d="M10.5 22C10.5 13.1634 17.6634 6 26.5 6H234.5C243.337 6 250.5 13.1634 250.5 22V150C250.5 158.837 243.337 166 234.5 166H26.5C17.6634 166 10.5 158.837 10.5 150V22Z" fill="white"/>
</g>
<path d="M10.5 17C10.5 8.16345 17.6634 1 26.5 1H224.5C233.337 1 240.5 8.16344 240.5 17V144.069C240.5 152.879 233.379 160.031 224.57 160.069L26.5696 160.93C17.7059 160.969 10.5 153.794 10.5 144.93V17Z" fill="$backColor"/>
<path d="M10.5 18C10.5 11.3726 15.8726 6 22.5 6H234.5C243.337 6 250.5 13.1634 250.5 22V150C250.5 158.837 243.337 166 234.5 166H22.5C15.8726 166 10.5 160.627 10.5 154V18Z" fill="url(#paint0_linear_782_11391)"/>
<mask id="mask0_782_11391" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="10" y="6" width="241" height="160">
<path d="M10.5 14C10.5 9.58172 14.0817 6 18.5 6H234.5C243.337 6 250.5 13.1634 250.5 22V150C250.5 158.837 243.337 166 234.5 166H18.5C14.0817 166 10.5 162.418 10.5 158V14Z" fill="url(#paint1_linear_782_11391)"/>
</mask>
<g mask="url(#mask0_782_11391)">
<path opacity="0.16" d="M0.914815 152.658C0.546778 151.971 0.243691 151.244 0.0137594 150.485L0.49228 150.34C0.172252 149.283 0 148.162 0 147V144.141H-0.5V142.234H0V136.516H-0.5V134.609H0V128.891H-0.5V126.984H0V121.266H-0.5V119.359H0V113.641H-0.5V111.734H0V106.016H-0.5V104.109H0V98.3906H-0.5V96.4844H0V90.7656H-0.5V88.8594H0V86V83.1406H-0.5V81.2344H0V75.5156H-0.5V73.6094H0V67.8906H-0.5V65.9844H0V60.2656H-0.5V58.3594H0V52.6406H-0.5V50.7344H0V45.0156H-0.5V43.1094H0V37.3906H-0.5V35.4844H0V29.7656H-0.5V27.8594H0V25C0 23.8378 0.172252 22.7167 0.492279 21.6604L0.0137587 21.5154C0.24369 20.7565 0.546776 20.0294 0.914812 19.3422L1.35557 19.5783C2.42798 17.5761 4.07612 15.928 6.07831 14.8556L5.84223 14.4148C6.52936 14.0468 7.25648 13.7437 8.0154 13.5138L8.16038 13.9923C9.21668 13.6723 10.3378 13.5 11.5 13.5H14.4465V13H16.4108V13.5H22.3036V13H24.2679V13.5H30.1608V13H32.1251V13.5H38.0179V13H39.9822V13.5H45.875V13H47.8393V13.5H53.7322V13H55.6965V13.5H61.5893V13H63.5536V13.5H69.4464V13H71.4107V13.5H77.3036V13H79.2678V13.5H85.1607V13H87.125V13.5H93.0178V13H94.9821V13.5H100.875V13H102.839V13.5H108.732V13H110.696V13.5H116.589V13H118.554V13.5H124.446V13H126.411V13.5H132.304V13H134.268V13.5H140.161V13H142.125V13.5H148.018V13H149.982V13.5H155.875V13H157.839V13.5H163.732V13H165.696V13.5H171.589V13H173.554V13.5H179.446V13H181.411V13.5H187.304V13H189.268V13.5H195.161V13H197.125V13.5H203.018V13H204.982V13.5H210.875V13H212.839V13.5H218.732V13H220.696V13.5H226.589V13H228.554V13.5H231.5C232.662 13.5 233.783 13.6723 234.84 13.9923L234.985 13.5138C235.744 13.7437 236.471 14.0468 237.158 14.4148L236.922 14.8556C238.924 15.928 240.572 17.5761 241.644 19.5783L242.085 19.3422C242.453 20.0294 242.756 20.7565 242.986 21.5154L242.508 21.6604C242.828 22.7167 243 23.8378 243 25V28.05H243.5V30.0834H243V36.1834H243.5V38.2167H243V44.3167H243.5V46.35H243V52.45H243.5V54.4833H243V60.5833H243.5V62.6167H243V68.7167H243.5V70.75H243V76.85H243.5V78.8833H243V84.9833H243.5V87.0167H243V93.1167H243.5V95.15H243V101.25H243.5V103.283H243V109.383H243.5V111.417H243V117.517H243.5V119.55H243V125.65H243.5V127.683H243V133.783H243.5V135.817H243V141.917H243.5V143.95H243V147C243 148.162 242.828 149.283 242.508 150.34L242.986 150.485C242.756 151.244 242.453 151.971 242.085 152.658L241.644 152.422C240.572 154.424 238.924 156.072 236.922 157.144L237.158 157.585C236.471 157.953 235.744 158.256 234.985 158.486L234.84 158.008C233.783 158.328 232.662 158.5 231.5 158.5H228.553V159H226.589V158.5H220.696V159H218.732V158.5H212.839V159H210.875V158.5H204.982V159H203.018V158.5H197.125V159H195.161V158.5H189.268V159H187.304V158.5H181.411V159H179.446V158.5H173.554V159H171.589V158.5H165.696V159H163.732V158.5H157.839V159H155.875V158.5H149.982V159H148.018V158.5H142.125V159H140.161V158.5H134.268V159H132.304V158.5H126.411V159H124.446V158.5H118.554V159H116.589V158.5H110.696V159H108.732V158.5H102.839V159H100.875V158.5H94.9822V159H93.0179V158.5H87.125V159H85.1607V158.5H79.2679V159H77.3036V158.5H71.4107V159H69.4464V158.5H63.5536V159H61.5893V158.5H55.6964V159H53.7321V158.5H47.8393V159H45.875V158.5H39.9821V159H38.0179V158.5H32.125V159H30.1607V158.5H24.2679V159H22.3036V158.5H16.4107V159H14.4464V158.5H11.5C10.3378 158.5 9.21668 158.328 8.16038 158.008L8.0154 158.486C7.25648 158.256 6.52936 157.953 5.84223 157.585L6.07831 157.144C4.07612 156.072 2.42798 154.424 1.35557 152.422L0.914815 152.658Z" stroke="white" stroke-dasharray="6 2"/>
</g>
<g filter="url(#filter1_d_782_11391)">
<path d="M150.5 123C150.5 109.745 161.245 99 174.5 99H250.5V147H174.5C161.245 147 150.5 136.255 150.5 123V123Z" fill="url(#paint2_linear_782_11391)" shape-rendering="crispEdges"/>
<rect x="152.5" y="101" width="44" height="44" rx="22" fill="url(#paint3_linear_782_11391)"/>
<rect x="162.654" y="111.154" width="9.6923" height="9.6923" rx="2.33333" stroke="white" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
<rect x="166.962" y="115.461" width="1.07692" height="1.07692" stroke="white" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
<rect x="166.962" y="129.461" width="1.07692" height="1.07692" stroke="white" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
<rect x="180.962" y="115.461" width="1.07692" height="1.07692" stroke="white" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
<rect x="162.654" y="125.154" width="9.6923" height="9.6923" rx="2.33333" stroke="white" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
<rect x="176.654" y="111.154" width="9.6923" height="9.6923" rx="2.33333" stroke="white" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
<rect width="1.07692" height="1.07692" transform="matrix(-1 0 0 1 186.346 133.769)" stroke="white" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
<rect width="1.07692" height="1.07692" transform="matrix(-1 0 0 1 182.038 129.461)" stroke="white" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
<rect width="1.07692" height="1.07692" transform="matrix(-1 0 0 1 186.346 125.154)" stroke="white" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
<rect width="1.07692" height="1.07692" transform="matrix(-1 0 0 1 177.73 133.769)" stroke="white" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
<rect width="1.07692" height="1.07692" transform="matrix(-1 0 0 1 177.73 125.154)" stroke="white" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
</g>
<defs>
<filter id="filter0_d_782_11391" x="0.5" y="0" width="260" height="180" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
<feOffset dy="4"/>
<feGaussianBlur stdDeviation="5"/>
<feComposite in2="hardAlpha" operator="out"/>
<feColorMatrix type="matrix" values="0 0 0 0 0.0403922 0 0 0 0 0.0380392 0 0 0 0 0.0403922 0 0 0 0.12 0"/>
<feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_782_11391"/>
<feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_782_11391" result="shape"/>
</filter>
<filter id="filter1_d_782_11391" x="150.5" y="99" width="100" height="50" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
<feOffset dy="2"/>
<feComposite in2="hardAlpha" operator="out"/>
<feColorMatrix type="matrix" values="0 0 0 0 0.0403922 0 0 0 0 0.0380392 0 0 0 0 0.0403922 0 0 0 0.12 0"/>
<feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_782_11391"/>
<feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_782_11391" result="shape"/>
</filter>
<linearGradient id="paint0_linear_782_11391" x1="130.5" y1="6" x2="130.5" y2="166" gradientUnits="userSpaceOnUse">
<stop stop-color="$frontGradientBegin"/>
<stop offset="1" stop-color="$frontGradientEnd"/>
</linearGradient>
<linearGradient id="paint1_linear_782_11391" x1="130.5" y1="6" x2="130.5" y2="166" gradientUnits="userSpaceOnUse">
<stop stop-color="$frontGradientBegin"/>
<stop offset="1" stop-color="$backColor"/>
</linearGradient>
<linearGradient id="paint2_linear_782_11391" x1="150.5" y1="123" x2="250.5" y2="123" gradientUnits="userSpaceOnUse">
<stop stop-color="white"/>
<stop offset="1" stop-color="white" stop-opacity="0.88"/>
</linearGradient>
<linearGradient id="paint3_linear_782_11391" x1="174.5" y1="101" x2="174.5" y2="145" gradientUnits="userSpaceOnUse">
<stop stop-color="$frontGradientBegin"/>
<stop offset="1" stop-color="$backColor"/>
</linearGradient>
</defs>
</svg>
''';
  return walletSvg;
}
